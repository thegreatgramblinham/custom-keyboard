
// Constants
_m3BoltHoleDiameter = 3.2 + 0.2; // plus padding
_m3BoltHoleRadius = _m3BoltHoleDiameter/2;

_m2BoltHoleDiameter = 2.2 + 0.45; // plus padding
_m2BoltHoleRadius = _m2BoltHoleDiameter/2;

MX_SWITCH_TYPE = "mx";
KAILH_SWITCH_TYPE = "kailh";

KEY_1U_MODIFIER = 1;
KEY_1_25U_MODIFIER = 1.25;

// General Variables
_mainBackplateRowCount = 3;
_mainBackplateColumnCount = 5;
_pinkyBackplateRowCount = 1;
_pinkyBackplateColumnCount = 1;
_thumbBackplateRowCount = 1;
_thumbBackplateColumnCount = 3;

_switchLength = 15;
_switchWidth = 15;

_switchPaddingLength = 2.25;
_switchPaddingWidth = 2.25;

_key1uLength = (_switchLength*KEY_1U_MODIFIER)+(_switchPaddingLength*2);
_key1uWidth = (_switchWidth*KEY_1U_MODIFIER)+(_switchPaddingWidth*2);
_key1_25uLength = (_switchLength*KEY_1U_MODIFIER)+(_switchPaddingLength*2);
_key1_25uWidth = (_switchWidth*KEY_1_25U_MODIFIER)+(_switchPaddingWidth*2);

_keySwitchCutoutLength = 13.86;
_keySwitchCutoutWidth = 13.86;

_backplateRoundingRadius = 1.25;
_backplateGrooveDepth = 1;

_mainBackplateLength = (_key1uLength * _mainBackplateColumnCount);
_mainBackplateWidth = (_key1uWidth * _mainBackplateRowCount);
_pinkyBackplateLength = (_key1_25uLength * _pinkyBackplateColumnCount);
_pinkyBackplateWidth = (_key1_25uWidth * _pinkyBackplateRowCount);
_thumbBackplateLength = (_key1_25uLength * _thumbBackplateColumnCount);
_thumbBackplateWidth = (_key1_25uWidth * _thumbBackplateRowCount);

_housingWallThickness = 3.5;
_housingBaseThickness = 3;
_housingBackplateCutoutPadding = 1.25;
_housingBodyRoundingRadius = 4;

_housingCornerSupportLegLength = 8.5;
_housingCornerSupportLegWidth = 3;
_housingStraightSupportLength = _housingCornerSupportLegWidth;
_housingStraightSupportWidth = _housingCornerSupportLegLength;
_housingSupportExposureIntoHousing = 3;

_insetNutCutoutDiameter = 3.2;
_insetNutCutoutRadius = _insetNutCutoutDiameter/2;

_oledBodyLength = 27.8;
_oledBodyWidth = 27.8;
_oledBodyDepth = 3.8;
_oledAttachmentHolesCentertoCenter = 23.5;
_oledScreenLength = 23.75;
_oledScreenWidth = 12.9;
_oledScreenLengthOffsetFromTop = 3.9;
_oledScreenWidthOffsetFromLeft = 2;
_oledBoltAttachmentLengthOffset = 2;
_oledBoltAttachmentWidthOffset = 2;

_trrsBodyLength = 12.1;
_trrsBodyWidth = 6.1;
_trrsBodyDepth = 5.1;
_trrsWallThickness = 2;

_trrsWedgeLength = _trrsBodyWidth;
_trrsWedgeWidth = _trrsBodyDepth;
_trrsWedgeDepth = 2;
_trrsWedgeAngle = 8;

_riserBoltHeadCutoutDepth = 3;

_riserTopDiameter = 6;
_riserTopRadius = _riserTopDiameter/2;
_riserBottomDiameter = 8;
_riserBottomRadius = _riserBottomDiameter/2;
_riserCutoutDiameter = 3.6;
_riserCutoutRadius = _riserCutoutDiameter/2;
_riserCutoutDepth = 3;

_matrixHousingCutoutLengthPlacement = _key1uWidth*(6)+1.3;

// MX Switch Variables
_mxBackplateDepth = 5;
_mxHousingBodyDepth = 18;
_mxBackplateOffsetFromHousing = _housingBaseThickness + 0;

// Kailh Switch Variables
_kailhBackplateDepth = 3;
_kailhHousingBodyDepth = 10;
_kailhBackplateRiserHeight = 2;
_kailhBackplateOffsetFromHousing = _housingBaseThickness + _kailhBackplateRiserHeight;

//Bridge Variables

_bridgeHousingInsetIntoCoupling = 7;

_bridgeBackplateLengthForHousing = 120;
_bridgeBackplateLength = _bridgeBackplateLengthForHousing - (_bridgeHousingInsetIntoCoupling*1.75);
_bridgeBackplateWidth = 53-(_housingBodyRoundingRadius*2); //Reverse engineering from mk3 protype size.

_bridgeLengthPlacement = _matrixHousingCutoutLengthPlacement+_bridgeHousingInsetIntoCoupling+10.1;
_bridgeWidthPlacement = 24.5;

_couplingBaseDepth = 6.5;
_couplingLength = 25;
_couplingWidth = _bridgeBackplateWidth;


_couplingInsetNutCutoutDepth = 3;
_couplingNutInsertLengthCenterToCenter = 24;
_couplingNutInsertWidthCenterToCenter = 43.5;
_couplingNutSetOffsetAdjustment = -0.25;
_couplingInsetNutSetLengthOffset = (((_couplingLength+(_housingBodyRoundingRadius*2))-_couplingNutInsertLengthCenterToCenter)/2)+(_couplingNutSetOffsetAdjustment*2);
_couplingInsetNutSetWidthOffset = (((_couplingWidth+(_housingBodyRoundingRadius*2))-_couplingNutInsertWidthCenterToCenter)/2)+(_couplingNutSetOffsetAdjustment*2);
_couplingHousingLidHeight = 10.5;
_couplingHousingLidBaseThickness = 2;

_couplingCableCutoutWidth = _couplingWidth*(3/9);
_couplingCableCutoutOffset = _couplingWidth*(2/5)+0.5;

_couplingBlockLength = 8;
_couplingBlockWidth = 10;
_couplingBlockDepth = 8;
_boltBlockOffsetAdjustment = -0.5;

_couplingBoltLength = _couplingBlockLength*3;
_couplingBoltRadius = _m3BoltHoleRadius;
_couplingBoltCounterSinkDepth = -0.5;
_couplingBoltCounterSinkRadius = _couplingBoltRadius*2;

_housingCouplingTotalHalfWidth = (_couplingLength/2)+_housingBodyRoundingRadius-_boltBlockOffsetAdjustment;

_bridgeGridEtchingRowCount = 3;
_bridgeGridEtchingColumnCount = 7;
_bridgeGridEtchingSideLength = _bridgeBackplateLength/_bridgeGridEtchingColumnCount;
_bridgeGridEtchingSideWidth = _bridgeBackplateWidth/_bridgeGridEtchingRowCount;
_bridgeGridEtchingDepth = 0.5;
_bridgeGridEtchingCutoutSideLength = 10;
_bridgeGridEtchingCutoutSideWidth = 10;

_bridgeOledScreenCoverBaseLength = 33;
_bridgeOledScreenCoverBaseWidth = 32;
_bridgeOledScreenCoverBaseDepth = 7;
_bridgeOledScreenCoverBaseThickness = 2;

//Pico Variables
_picoBodySizePadding = 0.4;
_picoBodyLength = 21 + _picoBodySizePadding;
_picoBodyWidth = 51 + _picoBodySizePadding;
_picoBodyDepth = 1;

_picoHousingLengthEdgePadding = 7;
_picoHousingWidthEdgePadding = 3.5;
_picoHousingBaseLength = _picoBodyLength + (_picoHousingLengthEdgePadding*2)+3;
_picoHousingBaseWidth = _picoBodyWidth + (_picoHousingWidthEdgePadding*2)+20;
_picoHousingBaseDepth = 6.5;
_picoHousingLidHeight = 13;
_picoHousingLidBoltCounterSink = 0;
_picoHousingLidBaseThickness = 2;
_picoHousingCableCutoutWidth = _picoHousingBaseWidth*(2/5);
_picoHousingCableCutoutOffset = _picoHousingBaseWidth*(1.5/5);
_picoHousingPaddingOffsetAdjustment = 0.25;

_picoIntraHousingLengthOffset = _picoHousingLengthEdgePadding-_picoHousingPaddingOffsetAdjustment+1.25;
_picoIntraHousingWidthOffset = _picoHousingWidthEdgePadding-_picoHousingPaddingOffsetAdjustment;
_picoInsetIntoHousing = 0.9;

_picoMountingHolesLengthCenterToCenter = 11.4;
_picoMountingHolesWidthCenterToCenter = 47;
_picoMountingStudWallThickess = 1.5;
_picoMountingStudHeight = 3;
_picoMountingStudInsetDepth = 3;

_picoCutoutDepth = 3;
_picoCenterSupportBeamLength = 8;
_picoCenterSupportBeamOffsetFromBottom = 2;
_picoCenterSupportBeamOffsetFromTop = 1.1;

_picoInsetNutCutoutDepth = 3;
_picoNutInsertLengthCenterToCenter = 29.5;
_picoNutInsertWidthCenterToCenter = 69;
_picoNutSetOffsetAdjustment = -0.25;
_picoInsetNutSetLengthOffset = ((_picoHousingBaseLength-_picoNutInsertLengthCenterToCenter)/2)+(_picoNutSetOffsetAdjustment*2);
_picoInsetNutSetWidthOffset = ((_picoHousingBaseWidth-_picoNutInsertWidthCenterToCenter)/2)+(_picoNutSetOffsetAdjustment*2);

_picoLengthPlacement = _matrixHousingCutoutLengthPlacement+175.1;
_picoWidthPlacement = 11.80;

_usbcBreakoutLength = 9.4;
_usbcBreakoutWidth = 14.6;
_usbcBreakoutDepth = 3.3;
_usbcBreakoutMountingInsertCenterToCenter = 20;


/// MAIN START ///

// Comment in this mirror statement to make any right-hand parts.
//mirror([1,0,0])

keyboard(KAILH_SWITCH_TYPE, isLeftSide=true);
wristRest();
//housing(_kailhHousingBodyDepth);
//backplate(_kailhBackplateDepth);
//housingCoupling(isLeftSideConnector=true, shouldRenderRamp=true, shouldRenderLid=true, shouldRenderBase=true);
//housingCouplingBody(shouldRenderRamp=true, shouldRenderLid=true, shouldRenderBase=true);
//housingCouplingLid(shouldRenderLeftWireCutout=true, shouldRenderRightWireCutout=true);
//bridgeSection(_kailhHousingBodyDepth, _kailhBackplateDepth, _kailhBackplateOffsetFromHousing);
//bridgeBackplate(_kailhBackplateDepth);
//bridgeScreenCover();
//boltCouplingBlock();
//oledScreenPunch(_picoHousingLidBaseThickness+2);
//oledScreenPlateCover(depth=1.5);
//oledScreenFrame();
//picoModel();
//trrsBodyPunch();
//trrsWedgeBlock();
//picoMountingStudSet(_picoMountingStudHeight,_picoMountingStudInsetDepth);
//picoMountingStud(_picoMountingStudHeight,_picoMountingStudInsetDepth);
//picoMountingNutPunchSet();
//picoHousing(renderLid=true, renderBase=false, renderPico=false);
//picoHousingBase();
//picoHousingTop();
//usbcClampBar();
//gridEtching(_bridgeGridEtchingRowCount, _bridgeGridEtchingColumnCount, _bridgeGridEtchingSideLength, _bridgeGridEtchingSideWidth, _bridgeGridEtchingDepth+1, _bridgeGridEtchingCutoutSideLength, _bridgeGridEtchingCutoutSideWidth);

/// MAIN END ///
module keyboard(switchType, isLeftSide)
{
    if (isLeftSide)
    {
        keyboardAssembly(switchType);
    }
    else
    {
        mirror([1,0,0])
            keyboardAssembly(switchType);
    }
}

module keyboardAssembly(switchType)
{
    backplateDepth = (switchType == MX_SWITCH_TYPE) ? _mxBackplateDepth : _kailhBackplateDepth;
    backplateOffsetFromHousing = (switchType == MX_SWITCH_TYPE) ? _mxBackplateOffsetFromHousing : _kailhBackplateOffsetFromHousing;
    housingDepth = (switchType == MX_SWITCH_TYPE) ? _mxHousingBodyDepth : _kailhHousingBodyDepth;
    backplateSupportHeight = backplateOffsetFromHousing-_housingBaseThickness;
    riserCounterSinkAmount = _riserCutoutDepth - backplateSupportHeight;
    union()
    {
        difference()
        {
            union()
            {
                difference()
                {
                    housing(housingDepth);
                    //Trim off the top edge of the housing to avoid sharper corners
                    housingTopTrimBlockLength = _mainBackplateLength+_pinkyBackplateLength+_thumbBackplateLength;
                    housingTopTrimBlockWidth = _mainBackplateWidth+_pinkyBackplateWidth+_thumbBackplateWidth;
                    housingTopTrimAmount = 1.0;
                    translate([-_housingWallThickness*3, -_housingWallThickness*3, housingDepth-housingTopTrimAmount])
                        cube([housingTopTrimBlockLength, housingTopTrimBlockWidth, housingDepth]);
                }
                //translate([0,0,backplateOffsetFromHousing])
                //    backplate(backplateDepth);

                //translate([_bridgeLengthPlacement,_bridgeWidthPlacement,0])
                //    bridgeSection(housingDepth, backplateDepth, backplateOffsetFromHousing);

                translate([_matrixHousingCutoutLengthPlacement,_bridgeWidthPlacement,0])
                    union()
                    {
                        couplingJointWidth = 59;
                        couplingJointLength = 28.70;
                        couplingJointDepth = 3;
                        jointLengthOffset = -7;
                        jointWidthOffset = -7;
                        couplingJointOutEdgeOffset = _housingCouplingTotalHalfWidth+_housingBodyRoundingRadius+2;
                        // Smoothing for joint seam.
                        translate([jointLengthOffset, jointWidthOffset, 0])
                            difference()
                            {
                                roundedCube(size=[couplingJointLength, couplingJointWidth, housingDepth], radius=_housingBodyRoundingRadius, apply_to="all");
                                cutoutEdgePadding = 5;
                                translate([-cutoutEdgePadding,-cutoutEdgePadding, couplingJointDepth])
                                    cube([couplingJointLength+(cutoutEdgePadding*2), couplingJointWidth+(cutoutEdgePadding*2), housingDepth]);
                                translate([couplingJointOutEdgeOffset, 0, -1])
                                    cube([couplingJointLength+(cutoutEdgePadding*2), couplingJointWidth+(cutoutEdgePadding*2), housingDepth]);
                            }

                        housingCoupling(isLeftSideConnector=true, shouldRenderRamp=true, shouldRenderLid=false, shouldRenderBase=true);
                    }

                ////pico enclosure
                //translate([_picoLengthPlacement,_picoWidthPlacement,0])
                //    union()
                //    {
                //        picoHousing(renderLid=false, renderBase=true, renderPico=false);
                //    }
            }
            if (backplateSupportHeight < _riserCutoutDepth)
            {
                translate([0, 0, _housingBaseThickness - riserCounterSinkAmount])
                    backplateMountingRiserSet(_riserCutoutDepth, renderNutHoles=false);
            }
        }
        //Backplate mounting risers
        translate([0,0,_housingBaseThickness - riserCounterSinkAmount])
            backplateMountingRiserSet(max(_riserCutoutDepth, backplateSupportHeight), renderNutHoles=true);
        //Housing backplate supports
        housingBackplateEdgeSupportSet(backplateSupportHeight);
    }
}

//Bodies
module housing(housingDepth)
{
    union()
    {
        difference()
        {
            union()
            {
                // Hide the joint between the pink and main bodies
                additionPinkyHousingLengthToHideRearSeam = 1;

                // Pink housing body
                translate([0,_key1uWidth*(3),0])
                    translate([-_housingWallThickness,-_housingWallThickness,0]) // Zero on origin
                        housingSubModule(_pinkyBackplateLength+additionPinkyHousingLengthToHideRearSeam, _pinkyBackplateWidth, housingDepth, _housingBaseThickness);
                // Main housing body.
                translate([_key1_25uLength*(1),_key1_25uWidth*(1),0])
                    translate([-_housingWallThickness,-_housingWallThickness,0]) // Zero on origin
                        housingSubModule(_mainBackplateLength, _mainBackplateWidth, housingDepth, _housingBaseThickness);
                // Thumb housing body.
                translate([_key1uLength*(4),0,0])
                    translate([-_housingWallThickness,-_housingWallThickness,0]) // Zero on origin
                        housingSubModule(_thumbBackplateLength, _thumbBackplateWidth, housingDepth, _housingBaseThickness);
            }

            // Housing submodule overlay cutouts
            union()
            {
                cutoutOverhang = 5;
                pinkyWallCutoutLength = _pinkyBackplateLength+(_housingBackplateCutoutPadding*2)+cutoutOverhang;
                pinkyWallCutoutWidth = _pinkyBackplateWidth+(_housingBackplateCutoutPadding*2);
                translate([-_housingBackplateCutoutPadding,_key1uWidth*(3)-_housingBackplateCutoutPadding,_housingBaseThickness])
                    roundedCube(size = [pinkyWallCutoutLength, pinkyWallCutoutWidth, housingDepth], radius=_housingBodyRoundingRadius, apply_to="zmax");

                mainWallCutoutLength = _mainBackplateLength+(_housingBackplateCutoutPadding*2);
                mainWallCutoutWidth = _mainBackplateWidth+(_housingBackplateCutoutPadding*2);
                translate([_key1_25uLength*(1)-_housingBackplateCutoutPadding,_key1_25uWidth*(1)-_housingBackplateCutoutPadding,_housingBaseThickness])
                    roundedCube(size = [mainWallCutoutLength, mainWallCutoutWidth, housingDepth], radius=_housingBodyRoundingRadius, apply_to="zmax");

                thumbWallCutoutLength = _thumbBackplateLength+(_housingBackplateCutoutPadding*2);
                thumbWallCutoutWidth = _thumbBackplateWidth+(_housingBackplateCutoutPadding*2);
                translate([_key1uLength*(4)-_housingBackplateCutoutPadding,-_housingBackplateCutoutPadding,_housingBaseThickness])
                    roundedCube(size = [thumbWallCutoutLength, thumbWallCutoutWidth, housingDepth], radius=_housingBodyRoundingRadius, apply_to="zmax");
            }

            // pico-adjacent wall cutouts
            picoHousingCutoutWidthOffset = -0.1;
            picoHousingCutoutLengthOffset = -0.6;
            // adjust the width here so we can get the round joint at the top
            picoHousingCutoutDifferenceFromRoundedMeasure = 5.1;
            picoHousingCutoutExtraLength = 2;
            translate([_matrixHousingCutoutLengthPlacement+picoHousingCutoutLengthOffset,_bridgeWidthPlacement+picoHousingCutoutWidthOffset,0])
            {
                cube([_picoHousingBaseLength, _bridgeBackplateWidth+picoHousingCutoutDifferenceFromRoundedMeasure, housingDepth*2]);
                //include the housing lid shape itself for scuplted top cutout
                housingSubModule(_picoHousingBaseLength-(_housingBodyRoundingRadius*2), _bridgeBackplateWidth, housingDepth*2, _picoHousingLidBaseThickness, apply_to="z");
            }
        }
    }
}

module housingSubModule(backplateLength, backplateWidth, housingDepth, baseThickness, apply_to="all")
{
    difference()
    {
        housingLength = backplateLength + (_housingWallThickness*2);
        housingWidth = backplateWidth + (_housingWallThickness*2);
        roundedCube(size = [housingLength, housingWidth, housingDepth], radius=_housingBodyRoundingRadius, apply_to=apply_to);

        // Housing body cut out.
        wallThicknessLessToleranceGap = _housingWallThickness-(_housingBackplateCutoutPadding);
        translate([wallThicknessLessToleranceGap, wallThicknessLessToleranceGap, baseThickness])
        {
            roundedCube(size=[backplateLength+(_housingBackplateCutoutPadding*2), backplateWidth+(_housingBackplateCutoutPadding*2), housingDepth], radius=_backplateRoundingRadius, apply_to="zmax");
        }
    }
}

module housingBackplateEdgeSupportSet(supportDepth)
{
    union()
    {
        riserInwardsLengthAdjustment = _picoHousingPaddingOffsetAdjustment;
        riserInwardsWidthAdjustment = _picoHousingPaddingOffsetAdjustment;
        //Corner backplate supports
        //Pinky Corners
        translate([riserInwardsLengthAdjustment,_key1uLength*(3)+_pinkyBackplateWidth-riserInwardsWidthAdjustment,_housingBaseThickness])
            rotate([0, 0, -90])
                housingCornerSupport(supportDepth);
        translate([riserInwardsLengthAdjustment,_key1uLength*(3)+riserInwardsWidthAdjustment,_housingBaseThickness])
            rotate([0, 0, 0])
                housingCornerSupport(supportDepth);
        translate([_key1_25uLength*(1)+riserInwardsLengthAdjustment,_key1uWidth*(3)+riserInwardsWidthAdjustment,_housingBaseThickness])
            rotate([0, 0, 180])
                housingCornerSupport(supportDepth);

        //Main Corners
        translate([_key1_25uLength*(1)+riserInwardsLengthAdjustment,_key1_25uWidth*(1)+riserInwardsWidthAdjustment,_housingBaseThickness])
            rotate([0, 0, 0])
                housingCornerSupport(supportDepth);
        translate([_key1_25uLength*(1)+_key1uLength*(3)+riserInwardsLengthAdjustment,_key1_25uWidth*(1)+riserInwardsWidthAdjustment,_housingBaseThickness])
            rotate([0, 0, 180])
                housingCornerSupport(supportDepth);
        translate([_key1_25uLength*(1)+_key1uLength*(5)-riserInwardsLengthAdjustment,_key1_25uWidth*(1)+_key1uWidth*(3)-riserInwardsWidthAdjustment,_housingBaseThickness])
            rotate([0, 0, 180])
                housingCornerSupport(supportDepth);
        translate([_key1_25uLength*(1)+_key1uLength*(5)-riserInwardsLengthAdjustment,_key1_25uWidth*(1)-riserInwardsWidthAdjustment,_housingBaseThickness])
            rotate([0, 0, 90])
                housingCornerSupport(supportDepth);

        //Thumb Corners
        translate([_key1_25uLength*(1)+_key1uLength*(3)+riserInwardsLengthAdjustment,riserInwardsWidthAdjustment,_housingBaseThickness])
            rotate([0, 0, 0])
                housingCornerSupport(supportDepth);
        translate([_key1_25uLength*(4)+_key1uLength*(3)-riserInwardsLengthAdjustment,riserInwardsWidthAdjustment,_housingBaseThickness])
            rotate([0, 0, 90])
                housingCornerSupport(supportDepth);

        //Non-corner backplate supports.
        //Top edge
        translate([_key1_25uLength*(1)+_key1uLength*(1)-_housingStraightSupportLength,_key1uWidth*(3)+_pinkyBackplateWidth-riserInwardsWidthAdjustment,_housingBaseThickness])
            rotate([0, 0, -90])
                housingStraightSupport(supportDepth);
        translate([_key1_25uLength*(1)+_key1uLength*(3)-_housingStraightSupportLength,_key1uWidth*(3)+_pinkyBackplateWidth-riserInwardsWidthAdjustment,_housingBaseThickness])
            rotate([0, 0, -90])
                housingStraightSupport(supportDepth);

        //Main bottom
        translate([_key1_25uLength*(1)+_key1uLength*(1.5)-_housingStraightSupportLength,_key1_25uWidth*(1)+riserInwardsWidthAdjustment,_housingBaseThickness])
            rotate([0, 0, -90])
                housingStraightSupport(supportDepth);

        //Main pico side
        decenteringAdjustmentForWires = 3;
        translate([_key1_25uLength*(3)+_key1uLength*(3)-riserInwardsLengthAdjustment,_key1_25uWidth*(1)+_key1uWidth*(1.5)-(_housingStraightSupportLength*(3/4))+decenteringAdjustmentForWires,_housingBaseThickness])
            rotate([0, 0, 0])
                housingStraightSupport(supportDepth);

        //Thumb bottom
        translate([_key1_25uLength*(3)+_key1uLength*(2.5)-_housingStraightSupportLength,riserInwardsWidthAdjustment,_housingBaseThickness])
            rotate([0, 0, -90])
                housingStraightSupport(supportDepth);

        //Thumb top pico side
        translate([_key1_25uLength*(3)+_key1uLength*(3.5)-_housingStraightSupportLength+_housingStraightSupportLength/2,_key1_25uWidth*(1)-riserInwardsWidthAdjustment,_housingBaseThickness])
            rotate([0, 0, -90])
                housingStraightSupport(supportDepth);
    }
}

module housingCornerSupport(depth)
{
    union()
    {
        // "core"
        translate([-_housingCornerSupportLegWidth/2, -_housingCornerSupportLegWidth/2, 0])
            cube([_housingCornerSupportLegWidth, _housingCornerSupportLegWidth, depth]);

        // "legs"
        translate([_housingCornerSupportLegWidth/2, -_housingCornerSupportLegWidth/2, 0])
            cube([_housingCornerSupportLegLength, _housingCornerSupportLegWidth, depth]);

        translate([-_housingCornerSupportLegWidth/2, _housingCornerSupportLegWidth/2, 0])
            cube([_housingCornerSupportLegWidth, _housingCornerSupportLegLength, depth]);
    }
}

module housingStraightSupport(depth)
{
    union()
    {
        translate([-_housingStraightSupportLength/2,-_housingStraightSupportLength/2,0])
           cube([_housingStraightSupportLength, _housingStraightSupportWidth, depth]);
    }
}

module backplate(backplateDepth)
{
    difference()
    {
        union()
        {
            translate([0,_key1uWidth*(3),0])
                backplateSubModule(_pinkyBackplateRowCount, _pinkyBackplateColumnCount, _key1_25uLength, _key1_25uWidth, backplateDepth);
            translate([_key1_25uLength*(1),_key1_25uWidth*(1),0])
                backplateSubModule(_mainBackplateRowCount, _mainBackplateColumnCount, _key1uLength, _key1uWidth, backplateDepth);
            translate([_key1uLength*(4),0,0])
                backplateSubModule(_thumbBackplateRowCount, _thumbBackplateColumnCount, _key1_25uLength, _key1_25uWidth, backplateDepth);
        }

        backplateBoltCountersinkDepth = 1.5;
        translate([0,0,-backplateBoltCountersinkDepth])
            riserBackplateBoltPunchSet(backplateDepth);
    }
}

module backplateSubModule(rowCount, columnCount, keyLength, keyWidth, backplateDepth)
{
    for (i=[0:rowCount-1])
        for (j=[0:columnCount-1])
        {
            translate([keyLength*j,keyWidth*i, 0])
                keyUnit(keyLength, keyWidth, backplateDepth);
        }
}

module bridgeScreenMountingRiserSet(riserHeight, renderNutHoles)
{
    translate([(_bridgeGridEtchingSideLength*2.5), (_bridgeGridEtchingSideWidth*0.5), _riserBoltHeadCutoutDepth])
        backplateMountingRiser(riserHeight, renderNutHoles);

    translate([(_bridgeGridEtchingSideLength*2.5), (_bridgeGridEtchingSideWidth*2.5), _riserBoltHeadCutoutDepth])
        backplateMountingRiser(riserHeight, renderNutHoles);

    translate([(_bridgeGridEtchingSideLength*4.5), (_bridgeGridEtchingSideWidth*0.5), _riserBoltHeadCutoutDepth])
        backplateMountingRiser(riserHeight, renderNutHoles);

    translate([(_bridgeGridEtchingSideLength*4.5), (_bridgeGridEtchingSideWidth*2.5), _riserBoltHeadCutoutDepth])
        backplateMountingRiser(riserHeight, renderNutHoles);
}

module bridgeBackplateMountingRiserSet(riserHeight, renderNutHoles)
{
    translate([(_bridgeGridEtchingSideLength*1), (_bridgeGridEtchingSideWidth*0.5), _riserBoltHeadCutoutDepth])
        backplateMountingRiser(riserHeight, renderNutHoles);

    translate([(_bridgeGridEtchingSideLength*1), (_bridgeGridEtchingSideWidth*2.5), _riserBoltHeadCutoutDepth])
        backplateMountingRiser(riserHeight, renderNutHoles);

    translate([(_bridgeGridEtchingSideLength*6), (_bridgeGridEtchingSideWidth*0.5), _riserBoltHeadCutoutDepth])
        backplateMountingRiser(riserHeight, renderNutHoles);

    translate([(_bridgeGridEtchingSideLength*6), (_bridgeGridEtchingSideWidth*2.5), _riserBoltHeadCutoutDepth])
        backplateMountingRiser(riserHeight, renderNutHoles);
}

module backplateMountingRiserSet(riserHeight, renderNutHoles)
{
    translate([(_key1uLength*1)+(_key1_25uLength*1), (_key1uWidth*2)+(_key1_25uWidth*1), 0])
        backplateMountingRiser(riserHeight, renderNutHoles);

    translate([(_key1uLength*2)+(_key1_25uLength*1), (_key1uWidth*1)+(_key1_25uWidth*1), 0])
        backplateMountingRiser(riserHeight, renderNutHoles);

    translate([(_key1uLength*4)+(_key1_25uLength*1), (_key1uWidth*2)+(_key1_25uWidth*1), 0])
        backplateMountingRiser(riserHeight, renderNutHoles);

    translate([(_key1uLength*4)+(_key1_25uLength*1), (_key1uWidth*0)+(_key1_25uWidth*1), 0])
        backplateMountingRiser(riserHeight, renderNutHoles);
}

module backplateMountingRiser(riserHeight, renderNutHole)
{
    difference()
    {
        cylinder(r2=_riserTopRadius, r1=_riserBottomRadius, h=riserHeight, $fn=100);
        if (renderNutHole)
            translate([0,0,riserHeight-_riserCutoutDepth])
                cylinder(r=_riserCutoutRadius, h=_riserCutoutDepth+1, $fn=100);
    }
}

module keyUnit(length, width, depth)
{
    difference()
    {
        roundedCube(size = [length, width, depth], radius=_backplateRoundingRadius, apply_to="zmax");

        translate([length/2, width/2, -1]) //forward to final position
            translate([-_keySwitchCutoutLength/2, -_keySwitchCutoutWidth/2, 0]) //back to origin
                cube([_keySwitchCutoutLength, _keySwitchCutoutWidth, depth+2]);
    }
}

module bridgeSection(housingDepth, backplateDepth, backplateOffsetFromHousing)
{
    backplateSupportHeight = backplateOffsetFromHousing - _housingBaseThickness;
    riserCounterSinkAmount = _riserCutoutDepth - backplateSupportHeight;
    union()
    {
        _bridgeBackplateLengthOffsetAdjustment = 1.6;
        _bridgeBackplateWidthOffsetAdjustment = -0.5;

        bridgeBackplateLengthOffset = (_housingBodyRoundingRadius*2)+_bridgeHousingInsetIntoCoupling+_bridgeBackplateLengthOffsetAdjustment;
        bridgeBackplateWidthOffset = _housingBodyRoundingRadius+_bridgeBackplateWidthOffsetAdjustment;
        difference()
        {
            bridgeHousing(housingDepth);

            if (backplateSupportHeight < _riserCutoutDepth)
            {
                translate([bridgeBackplateLengthOffset, bridgeBackplateWidthOffset, -riserCounterSinkAmount])
                    bridgeBackplateMountingRiserSet(_riserCutoutDepth, renderNutHoles=false);
                translate([bridgeBackplateLengthOffset, bridgeBackplateWidthOffset, -riserCounterSinkAmount])
                    bridgeScreenMountingRiserSet(_riserCutoutDepth, renderNutHoles=false);
            }
        }

        //translate([bridgeBackplateLengthOffset, bridgeBackplateWidthOffset, backplateOffsetFromHousing])
        //    bridgeBackplate(backplateDepth);

        //Backplate mounting risers
        translate([bridgeBackplateLengthOffset, bridgeBackplateWidthOffset, -riserCounterSinkAmount])
            bridgeBackplateMountingRiserSet(max(_riserCutoutDepth, backplateSupportHeight), renderNutHoles=true);
        translate([bridgeBackplateLengthOffset, bridgeBackplateWidthOffset, -riserCounterSinkAmount])
            bridgeScreenMountingRiserSet(_riserCutoutDepth, renderNutHoles=true);
    }
}

module bridgeHousing(housingDepth)
{
    union()
    {
        translate([0, 0, 0])
            housingCoupling(isLeftSideConnector=false, shouldRenderRamp=true, shouldRenderLid=false, shouldRenderBase=true);
        difference()
        {
            translate([_bridgeHousingInsetIntoCoupling, 0, 0])
                housingSubModule(_bridgeBackplateLengthForHousing, _bridgeBackplateWidth, housingDepth, _housingBaseThickness);

            //Cutouts for coupling sides
            translate([_bridgeHousingInsetIntoCoupling, -1, _couplingBaseDepth])
                cube([_bridgeHousingInsetIntoCoupling-1, _bridgeBackplateWidth+(_housingBodyRoundingRadius*2), housingDepth]);
            housingCoupling(isLeftSideConnector=false, shouldRenderRamp=true, shouldRenderLid=true, shouldRenderBase=true);

            translate([_bridgeBackplateLengthForHousing+_bridgeHousingInsetIntoCoupling+1, -1, _couplingBaseDepth])
                cube([_bridgeHousingInsetIntoCoupling+1, _bridgeBackplateWidth+(_housingBodyRoundingRadius*2), housingDepth]);
            translate([_bridgeBackplateLengthForHousing+_bridgeHousingInsetIntoCoupling-1, 0, 0])
                housingCoupling(isLeftSideConnector=true, shouldRenderRamp=true, shouldRenderLid=true, shouldRenderBase=true);

            //Trim off the top of the housing to avoid sharp edges.
            housingTopTrimBlockLength = _bridgeBackplateLength*2;
            housingTopTrimBlockWidth = _bridgeBackplateWidth*2;
            housingTopTrimAmount = 1.0;
            translate([-_housingWallThickness*3, -_housingWallThickness*3, housingDepth-housingTopTrimAmount])
                cube([housingTopTrimBlockLength, housingTopTrimBlockWidth, housingDepth]);
        }
        translate([_bridgeBackplateLengthForHousing+(_housingBodyRoundingRadius*2)-2, 0, 0])
            housingCoupling(isLeftSideConnector=true, shouldRenderRamp=true, shouldRenderLid=false, shouldRenderBase=true);
    }
}

module bridgeBackplate(backplateDepth)
{
    difference()
    {
        roundedCube([_bridgeBackplateLength, _bridgeBackplateWidth, backplateDepth], radius=_backplateRoundingRadius, apply_to="zmax");
        translate([0, 0, backplateDepth-_bridgeGridEtchingDepth])
            gridEtching(_bridgeGridEtchingRowCount, _bridgeGridEtchingColumnCount, _bridgeGridEtchingSideLength, _bridgeGridEtchingSideWidth, _bridgeGridEtchingDepth+1, _bridgeGridEtchingCutoutSideLength, _bridgeGridEtchingCutoutSideWidth);

        // Center screen wiring cutout
        translate([(_bridgeGridEtchingSideLength*3), (_bridgeGridEtchingSideWidth*1), -1])
            cube([_bridgeGridEtchingSideLength, _bridgeGridEtchingSideWidth, backplateDepth*2]);

        // Bolt holes
        translate([0, 0, -1])
        {
            riserBridgeBackplateBoltPunchSet(backplateDepth);
            riserBridgeScreenBoltPunchSet(backplateDepth, centerAtOrigin=false);
        }
    }
}

module bridgeScreenCover()
{
    union()
    difference()
    {
        translate([_bridgeOledScreenCoverBaseLength+(_housingBodyRoundingRadius*2)-1, 0, _bridgeOledScreenCoverBaseDepth+1])
            rotate([0, 180, 0])
                housingSubModule(_bridgeOledScreenCoverBaseLength, _bridgeOledScreenCoverBaseWidth, _bridgeOledScreenCoverBaseDepth, _bridgeOledScreenCoverBaseThickness, apply_to="z");

        //Screen cutout
        oledWidthOffsetFromTop = _oledBodyWidth - 1.5;
        oledLengthOffset = ((_bridgeOledScreenCoverBaseLength - _oledBodyLength)/2)+3.5;
        translate([oledLengthOffset, _bridgeOledScreenCoverBaseWidth-oledWidthOffsetFromTop, _bridgeOledScreenCoverBaseDepth-2])
            oledScreenPunch(_picoHousingLidBaseThickness+3);

        //Bolt Punches
        boltPunchSetOriginLengthOffset = 4.5;
        boltPunchSetOriginWidthOffset = 4.5;
        translate([boltPunchSetOriginLengthOffset, boltPunchSetOriginWidthOffset, _bridgeOledScreenCoverBaseDepth-1])
            riserBridgeScreenBoltPunchSet(_bridgeOledScreenCoverBaseThickness+2, centerAtOrigin=true);
    }
}

module housingCoupling(isLeftSideConnector, shouldRenderRamp, shouldRenderLid, shouldRenderBase)
{
    if (isLeftSideConnector)
    {
        difference()
        {
            housingCouplingBody(shouldRenderRamp, shouldRenderLid, shouldRenderBase);
            translate([(_couplingLength/2)+_housingBodyRoundingRadius+_boltBlockOffsetAdjustment, -1, -1])
                cube([_couplingLength*2, _couplingWidth*2, (_couplingBaseDepth+_couplingBlockDepth+_couplingHousingLidHeight)*2]);
        }
    }
    else
    {
        translate([-_housingCouplingTotalHalfWidth, 0, 0])
            difference()
            {
                housingCouplingBody(shouldRenderRamp, shouldRenderLid, shouldRenderBase);
                translate([-_couplingLength+(_couplingLength/2)+_housingBodyRoundingRadius+_boltBlockOffsetAdjustment, -1, -1])
                    cube([_couplingLength, _couplingWidth*2, (_couplingBaseDepth+_couplingBlockDepth+_couplingHousingLidHeight)*2]);
            }
    }
}

module housingCouplingBody(shouldRenderRamp, shouldRenderLid, shouldRenderBase)
{
    union()
    {
        // Body
        if (shouldRenderBase)
        {
            difference()
            {
                difference()
                {
                    arbitraryDepth = _couplingBaseDepth+10;
                    housingSubModule(_couplingLength, _couplingWidth, arbitraryDepth, _couplingBaseDepth);
                    translate([0,0,_couplingBaseDepth])
                        cube([_couplingLength+10, _couplingWidth+10, arbitraryDepth]);
                }

                // Lid attachement nut set
                translate([_couplingInsetNutSetLengthOffset,_couplingInsetNutSetWidthOffset,_couplingBaseDepth-_couplingInsetNutCutoutDepth])
                    couplingLidAttachmentNutPunchSet();

                if (shouldRenderRamp)
                {
                    // Left cable ramp cutout
                    couplingCableRampAngle = 42;
                    translate([-_couplingBaseDepth*1.5, _couplingCableCutoutOffset, 0])
                        rotate([0, couplingCableRampAngle, 0])
                            cube([_couplingBaseDepth, _couplingCableCutoutWidth, _couplingBaseDepth*3]);

                    // Right cable ramp cutout
                    mirror([1,0,0])
                    translate([-_couplingBaseDepth*1.5-_couplingLength-(_housingBodyRoundingRadius*2)+1, _couplingCableCutoutOffset, 0])
                        rotate([0, couplingCableRampAngle, 0])
                            cube([_couplingBaseDepth, _couplingCableCutoutWidth, _couplingBaseDepth*3]);
                }
            }

            // Bolt block
            translate([0, _couplingBlockLength, 0])
            {
                blockToBlockOffset = _couplingBlockWidth+16;
                translate([(_couplingLength-_couplingBlockLength)/2+_housingBodyRoundingRadius+_boltBlockOffsetAdjustment, 0, 0])
                    boltCouplingBlock();
                translate([(_couplingLength-_couplingBlockLength)/2+_housingBodyRoundingRadius+_boltBlockOffsetAdjustment, blockToBlockOffset, 0])
                    boltCouplingBlock();
            }
        }

        if(shouldRenderLid)
            translate([0, 0, _couplingBaseDepth])
                housingCouplingLid();
    }
}

module boltCouplingBlock()
{
    translate([0, _couplingBlockWidth, _couplingBaseDepth])
        rotate([0, 0, -90])
            difference()
            {
                union()
                {
                    cube([_couplingBlockWidth, _couplingBlockLength, _couplingBlockDepth]);
                    translate([_couplingBlockWidth, 0, 0])
                        rotate([90, 0, -90])
                            triangle(l1=_couplingBlockDepth, l2=_couplingBlockDepth, d=_couplingBlockWidth);
                    translate([0, _couplingBlockLength, 0])
                        rotate([90, 0, 90])
                            triangle(l1=_couplingBlockDepth, l2=_couplingBlockDepth, d=_couplingBlockWidth);
                }

                union()
                {
                    translate([_couplingBlockWidth/2, _couplingBoltLength-_couplingBlockLength, _couplingBlockDepth/2])
                        rotate([90, 0, 0])
                            cylinder(r=_couplingBoltRadius, h=_couplingBoltLength, $fn=100);
                    translate([_couplingBlockWidth/2, _couplingBoltCounterSinkDepth, _couplingBlockDepth/2])
                        rotate([90, 0, 0])
                            cylinder(r=_couplingBoltCounterSinkRadius, h=_couplingBoltLength, $fn=100);
                    translate([_couplingBlockWidth/2, _couplingBoltLength+_couplingBlockLength-_couplingBoltCounterSinkDepth, _couplingBlockDepth/2])
                        rotate([90, 0, 0])
                            cylinder(r=_couplingBoltCounterSinkRadius, h=_couplingBoltLength, $fn=100);
                }
            }
}

module housingCouplingLid(shouldRenderLeftWireCutout, shouldRenderRightWireCutout)
{
    difference()
    {
        translate([_couplingLength+(_housingBodyRoundingRadius*2)-1, 0, _couplingHousingLidHeight])
            rotate([0, 180, 0])
                housingSubModule(_couplingLength, _couplingWidth, _couplingHousingLidHeight, _couplingHousingLidBaseThickness, apply_to="z");

        picoCableCutoutDepth = 2;
        couplingHousingCableCutoutOffset = 11;
        couplingHousingCableCutoutWidth = 30;
        if (shouldRenderLeftWireCutout)
            translate([-1, couplingHousingCableCutoutOffset, -1])
                cube([_housingWallThickness+2, couplingHousingCableCutoutWidth, picoCableCutoutDepth+1]);
        if (shouldRenderRightWireCutout)
            translate([(_housingCouplingTotalHalfWidth*2)-_housingWallThickness-1, couplingHousingCableCutoutOffset, -1])
                cube([_housingWallThickness+2, couplingHousingCableCutoutWidth, picoCableCutoutDepth+1]);


        // Lid attachement nut set
        translate([_couplingInsetNutSetLengthOffset,_couplingInsetNutSetWidthOffset,_couplingBaseDepth+1])
            couplingLidAttachmentNutPunchSet();
    }
}

module picoHousing(renderLid, renderBase, renderPico)
{
    union()
    {
        difference()
        {
            union()
            {
                if (renderBase)
                    picoHousingBase();
                if (renderLid)
                    translate([0, 0, _picoHousingBaseDepth])
                        picoHousingTop();
            }
            usbcCutoutLength = 12;
            usbcCutoutWidth = 20;
            usbcCutoutHeight = 7.25;
            usbcCutoutHeightOffset = 3.0;
            usbcCutoutDepth = 3.76;
            //Cutout for usb connection
            translate([((_picoHousingBaseLength-usbcCutoutLength)/2)-_picoHousingPaddingOffsetAdjustment, _picoHousingBaseWidth-usbcCutoutDepth, usbcCutoutHeightOffset])
                cube([usbcCutoutLength, usbcCutoutWidth, usbcCutoutHeight]);

            translate([((_picoHousingBaseLength-_picoMountingHolesLengthCenterToCenter)/2)-_picoHousingPaddingOffsetAdjustment, _picoIntraHousingWidthOffset-_picoHousingPaddingOffsetAdjustment+2, _picoHousingBaseDepth-_picoMountingStudHeight-_picoCenterSupportBeamOffsetFromTop])
                picoMountingStudSet(_picoMountingStudHeight,0);
        }

        if(renderPico)
            translate([_picoIntraHousingLengthOffset, _picoIntraHousingWidthOffset, _picoHousingBaseDepth-_picoInsetIntoHousing])
                picoModel();

        if (renderBase)
            translate([((_picoHousingBaseLength-_picoMountingHolesLengthCenterToCenter)/2)-_picoHousingPaddingOffsetAdjustment, _picoIntraHousingWidthOffset-_picoHousingPaddingOffsetAdjustment+2, _picoHousingBaseDepth-_picoMountingStudHeight-_picoCenterSupportBeamOffsetFromTop])
                picoMountingStudSet(_picoMountingStudHeight,_picoMountingStudInsetDepth);
    }
}

module picoHousingBase()
{
    union()
    {
        difference()
        {
            difference()
            {
                arbitraryDepth = 10;
                housingSubModule(_picoHousingBaseLength-(_housingBodyRoundingRadius*2), _picoHousingBaseWidth-(_housingBodyRoundingRadius*2), arbitraryDepth, _picoHousingBaseDepth);
                translate([0,0,_picoHousingBaseDepth])
                    cube([_picoHousingBaseLength, _picoHousingBaseWidth, arbitraryDepth]);
            }

            // Lid attachement nut set
            translate([_picoInsetNutSetLengthOffset,_picoInsetNutSetWidthOffset,_picoHousingBaseDepth-_picoInsetNutCutoutDepth])
                lidAttachmentNutPunchSet();

            // Pico cutout
            translate([_picoIntraHousingLengthOffset, _picoIntraHousingWidthOffset, _picoHousingBaseDepth-_picoCutoutDepth])
                picoPunch(_picoCutoutDepth+1);

            //USB passthrough wiring route
            usbPassthroughCutoutLength = 6;
            usbPassthroughCutoutWidth = 9;
            usbPassthroughCutoutDepth = _picoCutoutDepth+1;

            usbPassthroughCutoutLengthOffset = _picoIntraHousingLengthOffset-usbPassthroughCutoutLength;
            usbPassthroughCutoutWidthOffset = _picoIntraHousingWidthOffset+_picoBodyWidth-usbPassthroughCutoutWidth;
            translate([usbPassthroughCutoutLengthOffset, usbPassthroughCutoutWidthOffset, _picoHousingBaseDepth-_picoCutoutDepth])
                cube([usbPassthroughCutoutLength, usbPassthroughCutoutWidth, usbPassthroughCutoutDepth]);

            // USBC breakout cutout
            usbcCutoutLengthOffset = 14+_picoHousingPaddingOffsetAdjustment;
            usbcCutoutWidthOffset = 62;
            translate([usbcCutoutLengthOffset, usbcCutoutWidthOffset, _picoHousingBaseDepth-(_usbcBreakoutDepth/2)])
            {
                cube([_usbcBreakoutLength, _usbcBreakoutWidth, _usbcBreakoutDepth]);
                usbcMountingLengthOffset = -5-_picoHousingPaddingOffsetAdjustment;
                usbcMountingWidthOffset = 7;
                translate([usbcMountingLengthOffset, usbcMountingWidthOffset, -1])
                    union()
                    {
                        cylinder(r=_insetNutCutoutRadius, h=_riserCutoutDepth+1, $fn=100);
                        translate([_usbcBreakoutMountingInsertCenterToCenter, 0, 0])
                            cylinder(r=_insetNutCutoutRadius, h=_riserCutoutDepth+1, $fn=100);
                    }
            }

        }

        couplingWidthOffset = (_picoHousingBaseWidth-_couplingWidth)/2-(_housingBodyRoundingRadius);
        translate([-_housingCouplingTotalHalfWidth+2.1, couplingWidthOffset, 0])
            housingCoupling(isLeftSideConnector=false, shouldRenderRamp=false, shouldRenderLid=false, shouldRenderBase=true);
        translate([_picoHousingBaseLength-1.1, couplingWidthOffset, 0])
            housingCoupling(isLeftSideConnector=true, shouldRenderRamp=false, shouldRenderLid=false, shouldRenderBase=true);

        couplingJointWidth = _couplingWidth+(_housingBodyRoundingRadius*2)-1.0;
        couplingJointLength = _picoHousingBaseLength+20;
        couplingJointDepth = 3;
        jointLengthOffset = -8;
        jointWidthOffset = couplingWidthOffset;
        couplingJointOutEdgeOffset = _housingCouplingTotalHalfWidth+_housingBodyRoundingRadius+2;
        // Smoothing for joint seam.
        translate([jointLengthOffset, jointWidthOffset, 1.5])
            difference()
            {
                roundedCube(size=[couplingJointLength, couplingJointWidth, _picoHousingBaseDepth], radius=_housingBodyRoundingRadius, apply_to="all");
                cutoutEdgePadding = 5;
                translate([-cutoutEdgePadding,-cutoutEdgePadding, 2])
                    cube([couplingJointLength+(cutoutEdgePadding*2), couplingJointWidth+(cutoutEdgePadding*2), _picoHousingBaseDepth*2]);
            }
    }
}

module picoMountingStudSet(height, insertDepth)
{
    translate([0,0,0])
        picoMountingStud(height, insertDepth);
    translate([_picoMountingHolesLengthCenterToCenter,0,0])
        picoMountingStud(height, insertDepth);
    translate([0,_picoMountingHolesWidthCenterToCenter,0])
        picoMountingStud(height, insertDepth);
    translate([_picoMountingHolesLengthCenterToCenter,_picoMountingHolesWidthCenterToCenter,0])
        picoMountingStud(height, insertDepth);
}

module picoMountingStud(height, insertDepth)
{
    difference()
    {
        cylinder(r=_insetNutCutoutRadius+_picoMountingStudWallThickess, h=height, $fn=100);
        translate([0, 0, height-insertDepth])
            picoMountNutPunch();
    }
}

module picoHousingTop()
{
    trrsPortOffsetFromBottom = 7.5;
    trrsPortOffsetFromRight = _housingWallThickness-_picoHousingPaddingOffsetAdjustment;
    trrsPortTotalLengthOffset = _picoHousingBaseLength-(_trrsBodyLength)-trrsPortOffsetFromRight;
    trrsPortTotalWidthOffset = trrsPortOffsetFromBottom;

    difference()
    {
        union()
        {
            difference()
            {
                translate([_picoHousingBaseLength-1, 0, _picoHousingLidHeight])
                    rotate([0, 180, 0])
                        housingSubModule(_picoHousingBaseLength-(_housingBodyRoundingRadius*2), _picoHousingBaseWidth-(_housingBodyRoundingRadius*2), _picoHousingLidHeight, _picoHousingLidBaseThickness, apply_to="z");

                // bolt attachements from the top into the housing bottom
                translate([_picoInsetNutSetLengthOffset-_picoHousingPaddingOffsetAdjustment, _picoInsetNutSetWidthOffset, _picoHousingLidHeight-_picoHousingLidBoltCounterSink])
                {
                    translate([0, 0, 0])
                        riserBackplateBoltPunch(_picoHousingLidBaseThickness);
                    translate([_picoNutInsertLengthCenterToCenter, 0, 0])
                        riserBackplateBoltPunch(_picoHousingLidBaseThickness);
                    translate([0, _picoNutInsertWidthCenterToCenter, 0])
                        riserBackplateBoltPunch(_picoHousingLidBaseThickness);
                    translate([_picoNutInsertLengthCenterToCenter, _picoNutInsertWidthCenterToCenter, 0])
                        riserBackplateBoltPunch(_picoHousingLidBaseThickness);
                }

                // cutouts to bring in matrix row/col wires
                picoCableCutoutDepth = 2;
                translate([-1, _picoHousingCableCutoutOffset, -1])
                    cube([_housingWallThickness+2, _picoHousingCableCutoutWidth, picoCableCutoutDepth+1]);
                translate([_picoHousingBaseLength-_housingWallThickness-1, _picoHousingCableCutoutOffset, -1])
                    cube([_housingWallThickness+2, _picoHousingCableCutoutWidth, picoCableCutoutDepth+1]);

                //Screen cutout
                oledWidthOffsetFromTop = _oledBodyWidth + 10;
                oledLengthOffset = ((_picoHousingBaseLength - _oledBodyLength)/2)-_picoHousingPaddingOffsetAdjustment;
                translate([oledLengthOffset, _picoHousingBaseWidth-oledWidthOffsetFromTop, _picoHousingLidHeight-_picoHousingLidBaseThickness-1])
                    oledScreenPunch(_picoHousingLidBaseThickness+2);
            }
        }
    }
}

module trrsWedgeBlock()
{
    difference()
    //union()
    {
        cube([_trrsWedgeLength, _trrsWedgeWidth, _trrsWedgeDepth]);
        translate([-1, -1, _trrsWedgeDepth/1.75])
            rotate([0, -_trrsWedgeAngle, 0])
                cube([_trrsWedgeLength+2, _trrsWedgeWidth+2, _trrsWedgeDepth+2]);
    }
}

module wristRest()
{
    wristRestDepth = 8;
    pinkyRestLength = (_key1_25uLength*1)+(_key1uLength*0);
    pinkyRestWidth = (_key1_25uWidth*1)+(_key1uWidth*2)+(_housingWallThickness*2);
    mainRestLength = (_key1_25uLength*1)+(_key1uLength*3);
    mainRestWidth = (_key1_25uWidth*1)+(_key1uWidth*0)+(_housingWallThickness*1);
    thumbRestLength = (_key1_25uLength*4)+(_key1uLength*3)+(_housingWallThickness*2);
    thumbRestWidth = (_key1_25uWidth*3)+(_key1uWidth*1);

    difference()
    {
        union()
        {
            translate([-_housingWallThickness, -_housingWallThickness*4, 0])
                roundedCube(size=[pinkyRestLength, pinkyRestWidth, wristRestDepth], radius=_housingBodyRoundingRadius, apply_to="zall");
            translate([-_housingWallThickness, -_housingWallThickness*2, 0])
                roundedCube(size=[mainRestLength, mainRestWidth, wristRestDepth], radius=_housingBodyRoundingRadius, apply_to="zall");
            translate([-_housingWallThickness, -thumbRestWidth-_housingWallThickness, 0])
                roundedCube(size=[thumbRestLength, thumbRestWidth, wristRestDepth], radius=_housingBodyRoundingRadius, apply_to="zall");
        }

        // Cutout idea, but it won't work on the outside of the rest because it interferes
        // with the palm placement and stability.
        //squareCutoutSideLength = _key1uLength;
        //restCutoutPadding = _housingWallThickness;
        //translate([0, -(_key1_25uWidth*3)-(_key1uWidth*1), -1])
        //    roundedCube(size=[squareCutoutSideLength, squareCutoutSideLength, wristRestDepth+2], radius=_housingBodyRoundingRadius, apply_to="zall");
        //translate([0, -(_key1_25uWidth*3)+restCutoutPadding, -1])
        //    roundedCube(size=[squareCutoutSideLength/2, squareCutoutSideLength/2, wristRestDepth+2], radius=_housingBodyRoundingRadius/1.5, apply_to="zall");
        //translate([(_key1uLength*1)+restCutoutPadding, -(_key1_25uWidth*3)-(_key1uWidth*1), -1])
        //    roundedCube(size=[squareCutoutSideLength/2, squareCutoutSideLength/2, wristRestDepth+2], radius=_housingBodyRoundingRadius/1.5, apply_to="zall");
    }
}

module oledScreenPlateCover(depth, includeScreenCutout=false)
{
    difference()
    {
        cube([_oledBodyLength, _oledBodyWidth, depth]);
        translate([_picoHousingPaddingOffsetAdjustment, 0, -1])
            oledScreenPunch(depth+2, includeScreenCutout);
    }
}

module oledScreenFrame()
{
    union()
    {
        frameDepth = 1.5;
        oledScreenPlateCover(frameDepth, includeScreenCutout=true);
        difference()
        {
            extraPadding = 1.5;
            translate([-extraPadding, -extraPadding, 0])
                roundedCube(size = [_oledBodyLength+(extraPadding*2), _oledBodyWidth+(extraPadding*2), frameDepth], radius=0.75, apply_to="zall");
            translate([0, 0, -1])
                cube([_oledBodyLength, _oledBodyWidth, frameDepth+2]);
        }
    }
}

module picoModel()
{
    translate([_picoBodyLength/2, _picoBodyWidth/2, _picoBodyDepth/2])
        rotate([90, 0, 0])
            import("../resources/stl/Raspberry-Pi-Pico-R3.stl");
}

module usbcClampBar()
{
    _usbcClampBarLength = _usbcBreakoutMountingInsertCenterToCenter;
    _usbcClampBarWidth = _m2BoltHoleDiameter + 3;
    _usbcClampBarDepth = 2;
    _usbcClampBarExtraWasherDepth = 1.25;
    _clampBarBoltAttachDepth = _usbcClampBarDepth + _usbcClampBarExtraWasherDepth;
    _usbcClampBarTabLength = 10;
    _usbcClampBarTabWidth = 4;
    difference()
    {
        union()
        {
            cube([_usbcClampBarLength, _usbcClampBarWidth, _usbcClampBarDepth]);
            translate([0, _usbcClampBarWidth/2, 0])
                cylinder(r=_usbcClampBarWidth/2, h=_clampBarBoltAttachDepth, $fn=100);
            translate([_usbcClampBarLength, _usbcClampBarWidth/2, 0])
                cylinder(r=_usbcClampBarWidth/2, h=_clampBarBoltAttachDepth, $fn=100);

            //tab
            translate([(_usbcBreakoutMountingInsertCenterToCenter - _usbcClampBarTabLength)/2, _usbcClampBarWidth, 0])
                cube([_usbcClampBarTabLength, _usbcClampBarTabWidth, _usbcClampBarDepth]);
        }
        translate([0, _usbcClampBarWidth/2, 0])
        {
            translate([0, 0, -1])
                cylinder(r=_m2BoltHoleRadius, h=_clampBarBoltAttachDepth+2, $fn=100);
            translate([_usbcBreakoutMountingInsertCenterToCenter, 0, -1])
                cylinder(r=_m2BoltHoleRadius, h=_clampBarBoltAttachDepth+2, $fn=100);
        }
    }
}

//Punches
module picoPunch(depth)
{
    union()
    {
        cube([_picoBodyLength, _picoBodyWidth, depth]);
    }
}

module lidAttachmentNutPunchSet()
{
    translate([0,0,0])
        lidAttachmentNutPunch();
    translate([_picoNutInsertLengthCenterToCenter,0,0])
        lidAttachmentNutPunch();
    translate([0,_picoNutInsertWidthCenterToCenter,0])
        lidAttachmentNutPunch();
    translate([_picoNutInsertLengthCenterToCenter,_picoNutInsertWidthCenterToCenter,0])
        lidAttachmentNutPunch();
}

module couplingLidAttachmentNutPunchSet()
{
    translate([0,0,0])
        lidAttachmentNutPunch();
    translate([_couplingNutInsertLengthCenterToCenter,0,0])
        lidAttachmentNutPunch();
    translate([0,_couplingNutInsertWidthCenterToCenter,0])
        lidAttachmentNutPunch();
    translate([_couplingNutInsertLengthCenterToCenter,_couplingNutInsertWidthCenterToCenter,0])
        lidAttachmentNutPunch();
}

module lidAttachmentNutPunch()
{
    union()
    {
        cylinder(r=_insetNutCutoutRadius,h=_picoInsetNutCutoutDepth+1,$fn=100);
    }
}

module picoMountingNutPunchSet()
{
    translate([0,0,0])
        picoMountNutPunch();
    translate([_picoMountingHolesLengthCenterToCenter,0,0])
        picoMountNutPunch();
    translate([0,_picoMountingHolesWidthCenterToCenter,0])
        picoMountNutPunch();
    translate([_picoMountingHolesLengthCenterToCenter,_picoMountingHolesWidthCenterToCenter,0])
        picoMountNutPunch();
}

module picoMountNutPunch()
{
    union()
    {
        cylinder(r=_insetNutCutoutRadius,h=_picoInsetNutCutoutDepth+1,$fn=100);
    }
}

module riserBridgeBackplateBoltPunchSet(backplateDepth)
{
    translate([(_bridgeGridEtchingSideLength*1), (_bridgeGridEtchingSideWidth*0.5), _riserBoltHeadCutoutDepth])
        riserBackplateBoltPunch(backplateDepth);

    translate([(_bridgeGridEtchingSideLength*1), (_bridgeGridEtchingSideWidth*2.5), _riserBoltHeadCutoutDepth])
        riserBackplateBoltPunch(backplateDepth);

    translate([(_bridgeGridEtchingSideLength*6), (_bridgeGridEtchingSideWidth*0.5), _riserBoltHeadCutoutDepth])
        riserBackplateBoltPunch(backplateDepth);

    translate([(_bridgeGridEtchingSideLength*6), (_bridgeGridEtchingSideWidth*2.5), _riserBoltHeadCutoutDepth])
        riserBackplateBoltPunch(backplateDepth);
}

module riserBridgeScreenBoltPunchSet(backplateDepth, centerAtOrigin)
{
    xTran = centerAtOrigin ? -(_bridgeGridEtchingSideLength*2.5) : 0;
    yTran = centerAtOrigin ? -(_bridgeGridEtchingSideWidth*0.5) : 0;
    translate([xTran, yTran, 0])
        union()
        {
            translate([(_bridgeGridEtchingSideLength*2.5), (_bridgeGridEtchingSideWidth*0.5), _riserBoltHeadCutoutDepth])
                riserBackplateBoltPunch(backplateDepth);

            translate([(_bridgeGridEtchingSideLength*2.5), (_bridgeGridEtchingSideWidth*2.5), _riserBoltHeadCutoutDepth])
                riserBackplateBoltPunch(backplateDepth);

            translate([(_bridgeGridEtchingSideLength*4.5), (_bridgeGridEtchingSideWidth*0.5), _riserBoltHeadCutoutDepth])
                riserBackplateBoltPunch(backplateDepth);

            translate([(_bridgeGridEtchingSideLength*4.5), (_bridgeGridEtchingSideWidth*2.5), _riserBoltHeadCutoutDepth])
                riserBackplateBoltPunch(backplateDepth);
        }
}

module riserBackplateBoltPunchSet(backplateDepth)
{
    translate([(_key1uLength*1)+(_key1_25uLength*1), (_key1uWidth*2)+(_key1_25uWidth*1), _riserBoltHeadCutoutDepth])
        riserBackplateBoltPunch(backplateDepth);

    translate([(_key1uLength*2)+(_key1_25uLength*1), (_key1uWidth*1)+(_key1_25uWidth*1), _riserBoltHeadCutoutDepth])
        riserBackplateBoltPunch(backplateDepth);

    translate([(_key1uLength*4)+(_key1_25uLength*1), (_key1uWidth*2)+(_key1_25uWidth*1), _riserBoltHeadCutoutDepth])
        riserBackplateBoltPunch(backplateDepth);

    translate([(_key1uLength*4)+(_key1_25uLength*1), (_key1uWidth*0)+(_key1_25uWidth*1), _riserBoltHeadCutoutDepth])
        riserBackplateBoltPunch(backplateDepth);
}

module riserBackplateBoltPunch(backplateDepth)
{
    union()
    {
        //Traditional bolt punch
        boltHeadCutoutRadius = 2.1;
        boltHeadCutoutDepth = 3;

        cylinder(r=boltHeadCutoutRadius, h=boltHeadCutoutDepth+1, $fn=100);

        boltPunchDepth = backplateDepth+1;
        translate([0,0,-boltPunchDepth])
               cylinder(r=_m2BoltHoleRadius, h=boltPunchDepth+2, $fn=100);
    }
}

module oledScreenPunch(depth, includeScreenCutout=true)
{
    union()
    {
        //bolt cutouts
        translate([_oledBoltAttachmentLengthOffset, _oledBoltAttachmentWidthOffset, 0])
        {
            translate([0, 0, 0])
                cylinder(r=_m2BoltHoleRadius, h=depth, $fn=100);
            translate([0, _oledAttachmentHolesCentertoCenter, 0])
                cylinder(r=_m2BoltHoleRadius, h=depth, $fn=100);
            translate([_oledAttachmentHolesCentertoCenter, 0, 0])
                cylinder(r=_m2BoltHoleRadius, h=depth, $fn=100);
            translate([_oledAttachmentHolesCentertoCenter, _oledAttachmentHolesCentertoCenter, 0])
                cylinder(r=_m2BoltHoleRadius, h=depth, $fn=100);
        }

        //screen cutout
        if (includeScreenCutout)
            translate([_oledScreenWidthOffsetFromLeft, _oledScreenWidth-_oledScreenLengthOffsetFromTop, 0])
                cube([_oledScreenLength, _oledScreenWidth, depth]);
    }
}

module trrsBodyPunch()
{
    union()
    {
        trrsConnectorTolerance = 0.1;
        trrsConnectorDepth = 2 + 6; //plus punch length
        cube([_trrsBodyLength, _trrsBodyWidth, _trrsBodyDepth]);
        translate([_trrsBodyLength, _trrsBodyWidth/2, _trrsBodyDepth/2])
            rotate([0, 90, 0])
                cylinder(r=(_trrsBodyDepth/2)+trrsConnectorTolerance,h=trrsConnectorDepth, $fn=100);
    }
}

module gridEtching(rowCount, columnCount, gridUnitSideLength, gridUnitSideWidth, gridDepth, gridUnitCutoutSideLength, gridUnitCutoutSideWidth)
{
    lengthSeparatorThickness = (gridUnitSideLength - gridUnitCutoutSideLength)/2;
    widthSeparatorThickness = (gridUnitSideWidth - gridUnitCutoutSideWidth)/2;

    for (i=[0:columnCount-1])
        for (j=[0:rowCount-1])
        {
            translate([i*(gridUnitSideLength-0.001), j*(gridUnitSideWidth-0.001), 0])
                gridEtchingUnit(gridUnitSideLength, gridUnitSideWidth, gridDepth, gridUnitCutoutSideLength, gridUnitCutoutSideWidth);
        }
}

module gridEtchingUnit(gridUnitSideLength, gridUnitSideWidth, gridDepth, gridUnitCutoutSideLength, gridUnitCutoutSideWidth)
{
    difference()
    {
        cube([gridUnitSideLength, gridUnitSideWidth, gridDepth]);
        translate([(gridUnitSideLength-gridUnitCutoutSideLength)/2+(_backplateRoundingRadius/2), (gridUnitSideWidth-gridUnitCutoutSideWidth)/2+(_backplateRoundingRadius/2), -1])
            minkowski()
            {
                cube([gridUnitCutoutSideLength-_backplateRoundingRadius, gridUnitCutoutSideWidth-_backplateRoundingRadius, gridDepth+2]);
                cylinder(r=_backplateRoundingRadius, h=gridDepth+2, $fn=100);
            }
    }
}

//Utility
/// Builds a cube with rounded corners
/// size - dimension vector
/// center - centered on xyz planes?
/// radius - rounding radius
/// apply_to - which sides to round
module roundedCube(size = [1, 1, 1], center = false, radius = 0.5, apply_to = "all")
{
    // If single value, convert to [x, y, z] vector
    size = (size[0] == undef) ? [size, size, size] : size;

    translate_min = radius;
    translate_xmax = size[0] - radius;
    translate_ymax = size[1] - radius;
    translate_zmax = size[2] - radius;

    diameter = radius * 2;

    obj_translate = (center == false) ?
        [0, 0, 0] : [
            -(size[0] / 2),
            -(size[1] / 2),
            -(size[2] / 2)
        ];

    translate(v = obj_translate) {
        hull() {
            for (translate_x = [translate_min, translate_xmax]) {
                x_at = (translate_x == translate_min) ? "min" : "max";
                for (translate_y = [translate_min, translate_ymax]) {
                    y_at = (translate_y == translate_min) ? "min" : "max";
                    for (translate_z = [translate_min, translate_zmax]) {
                        z_at = (translate_z == translate_min) ? "min" : "max";

                        translate(v = [translate_x, translate_y, translate_z])
                        if (
                            (apply_to == "all") ||
                            (apply_to == "xmin" && x_at == "min") || (apply_to == "xmax" && x_at == "max") ||
                            (apply_to == "ymin" && y_at == "min") || (apply_to == "ymax" && y_at == "max") ||
                            (apply_to == "zmin" && z_at == "min") || (apply_to == "zmax" && z_at == "max")
                        ) {
                            sphere(r = radius, $fn=20);
                        } else {
                            rotate =
                                (apply_to == "xmin" || apply_to == "xmax" || apply_to == "x") ? [0, 90, 0] : (
                                (apply_to == "ymin" || apply_to == "ymax" || apply_to == "y") ? [90, 90, 0] :
                                [0, 0, 0]
                            );
                            rotate(a = rotate)
                            cylinder(h = diameter, r = radius, center = true, $fn=20);
                        }
                    }
                }
            }
        }
    }
}

/// Builds a right triangle with the specified parameters.
/// l1 - first side length connected to 90 degree angle.
/// l2 - second side lenght connected to 90 degree angle.
/// d - depth of the prism in the z axis.
/// center - true to center all measures at origin
module triangle(l1, l2, d, center=false)
{
    centroid = center ? [-l2/3, -l1/3, -d/2] : [0, 0, 0];
    translate(centroid) linear_extrude(height=d)
    {
        polygon(points=[[0,0],[l2,0],[0,l1]], paths=[[0,1,2]]);
    }
}
