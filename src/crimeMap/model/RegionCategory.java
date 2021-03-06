package crimeMap.model;

public class RegionCategory {
  protected int reportId;
  protected Region region;
  
  public enum Region {
	  MAGNOLIA,
	  ROOSEVELT_RAVENNA,
	  BALLARD_SOUTH,
	  DOWNTOWN_COMMERCIAL,
	  PHINNEY_RIDGE,
	  ROXHILL_WESTWOOD_ARBOR_HEIGHTS,
	  NORTHGATE,
	  CAPITOL_HILL,
	  UNIVERSITY,
	  NORTH_BEACON_HILL,
	  FIRST_HILL,
	  GEORGETOWN,
	  QUEEN_ANNE,
	  SODO,
	  CENTRAL_AREA_SQUIRE_PARK,
	  MID_BEACON_HILL,
	  ALASKA_JUNCTION,
	  FREMONT,
	  NORTH_ADMIRAL,
	  SLU_CASCADE,
	  CHINATOWN_INTERNATIONAL_DISTRICT,
	  SANDPOINT,
	  HILLMAN_CITY,
	  HIGH_POINT,
	  MOUNT_BAKER,
	  HIGHLAND_PARK,
	  BITTERLAKE,
	  PIONEER_SQUARE,
	  BELLTOWN,
	  SOUTH_BEACON_HILL,
	  JUDKINS_PARK_NORTH_BEACON_HILL,
	  MADRONA_LESCHI,
	  EASTLAKE_WEST,
	  MADISON_PARK,
	  NORTH_DELRIDGE,
	  CLAREMONT_RAINIER_VISTA,
	  RAINIER_VIEW,
	  MONTLAKE_PORTAGE_BAY,
	  LAKEWOOD_SEWARD_PARK,
	  SOUTH_DELRIDGE,
	  WALLINGFORD,
	  NEW_HOLLY,
	  GREENWOOD,
	  BALLARD_NORTH,
	  PIGEON_POINT,
	  MORGAN,
	  BRIGHTON_DUNLAP,
	  MILLER_PARK,
	  RAINIER_BEACH,
	  SOUTH_PARK,
	  ALKI,
	  COLUMBIA_CITY,
	  FAUNTLEROY_SW,
	  GENESEE,
	  COMMERCIAL_HARBOR_ISLAND,
	  EASTLAKE_EAST,
	  COMMERCIAL_DUWAMISH,
	  UNKNOWN,
	  LAKECITY
  }

  public int getReportId() {
    return reportId;
  }

  public void setReportId(int reportId) {
    this.reportId = reportId;
  }

  public Region getRegion() {
    return region;
  }

  public void setRegion(Region region) {
    this.region = region;
  }
}
