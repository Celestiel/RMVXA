# PLEASE, ADD AN EXPLICATION FOR NEOPHYTE

#==============================================================================
# ** Game_Player
#------------------------------------------------------------------------------
#  This class handles the player. It includes event starting determinants and
# map scrolling functions. The instance of this class is referenced by
# $game_player.
#==============================================================================
class Game_Player
  #-------------------------------------------------------------------------- 
  # * Determine if Map is Passable
  #     d:  Direction (2,4,6,8)
  #--------------------------------------------------------------------------
  alias_method :ww_map_passable?, :map_passable?
  def map_passable?(x, y, d)
    if @vehicle_type == :water_walk 
      $game_map.boat_passable?(x, y) || super
    else 
      ww_map_passable?(x,y,d)
    end
  end
  #-------------------------------------------------------------------------- 
  # * Update
  #--------------------------------------------------------------------------
  alias_method :ww_update, :update
  def update
    if [:walk,:water_walk].include?(@vehicle_type) 
      @vehicle_type = ($game_switches[3]) ? :water_walk : :walk
    end
    ww_update
  end
  #-------------------------------------------------------------------------- 
  # * 
  #--------------------------------------------------------------------------
  def water_walk?
    @vehicle_type == :water_walk
  end
  #-------------------------------------------------------------------------- 
  # *
  #-------------------------------------------------------------------------- 
  alias :ww_increase_steps :increase_steps
  def increase_steps
      water_walk? ? $game_party.increase_steps : ww_increase_steps
  end
end
