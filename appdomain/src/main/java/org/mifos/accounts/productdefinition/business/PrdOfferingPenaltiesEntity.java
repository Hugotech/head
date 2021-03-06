/*
 * Copyright (c) 2005-2011 Grameen Foundation USA
 * All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
 * implied. See the License for the specific language governing
 * permissions and limitations under the License.
 *
 * See also http://www.apache.org/licenses/LICENSE-2.0.html for an
 * explanation of the license and how it is applied.
 */

package org.mifos.accounts.productdefinition.business;

import org.mifos.accounts.penalties.business.PenaltyBO;
import org.mifos.framework.business.AbstractEntity;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class PrdOfferingPenaltiesEntity extends AbstractEntity {
    private static final Logger logger = LoggerFactory.getLogger(PrdOfferingPenaltiesEntity.class);
    private final Short prdOfferingPenaltyId;
    @SuppressWarnings("unused")
    private final PrdOfferingBO prdOffering;
    private final PenaltyBO penalty;
    
    public PrdOfferingPenaltiesEntity(PrdOfferingBO prdOffering, PenaltyBO penalty) {
        this.prdOfferingPenaltyId = null;
        this.prdOffering = prdOffering;
        this.penalty = penalty;
    }
    
    protected PrdOfferingPenaltiesEntity() {
        this.prdOfferingPenaltyId = null;
        this.prdOffering = null;
        this.penalty = null;
    }
    
    public PenaltyBO getPenalty() {
        return this.penalty;
    }
    
    public Short getPrdOfferingFeeId() {
        return prdOfferingPenaltyId;
    }
    
    public boolean isPenaltyPresent(Short penaltyId) {
        return penalty.getPenaltyId().equals(penaltyId);
    }

    @Override
    public boolean equals(Object object) {
        PrdOfferingPenaltiesEntity prdOfferingPenalties = null;
        boolean value = false;

        if (object != null) {
            prdOfferingPenalties = (PrdOfferingPenaltiesEntity) object;
            if (prdOfferingPenalties.getPrdOfferingFeeId().equals(this.prdOfferingPenaltyId)) {
                value = true;
            }
        }
        
        logger.info("In Equals of loanOffering penalty:" + value);
        return value;
    }
}
