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
  alias :ww_map_passable? :map_passable?
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
  alias :ww_update :update
  def update
    if @vehicle_type == :walk || @vehicle_type == :water_walk 
      if $game_switches[3]
        @vehicle_type = :water_walk
      else
        @vehicle_type = :walk
      end
    end
    ww_update
  end
  #-------------------------------------------------------------------------- 
  # * 
  #--------------------------------------------------------------------------
  def water_walk?
    @vehicle_type == :water_walk ? true : false
  end
  #-------------------------------------------------------------------------- 
  # *
  #-------------------------------------------------------------------------- 
  alias :ww_increase_steps :increase_steps
  def increase_steps
      water_walk? ? $game_party.increase_steps : ww_increase_steps
  end
end
