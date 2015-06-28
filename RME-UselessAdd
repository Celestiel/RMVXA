#==============================================================================
# ** SV (special thanks to Zeus81)
#------------------------------------------------------------------------------
#  self Variable handling API
#==============================================================================

module SV
  #--------------------------------------------------------------------------
  # * Copy SV from event to another
  #--------------------------------------------------------------------------
  def copy(src_map,src_id,tar_map,tar_id)
    hash = $game_self_vars
    keys = hash.keys.select{|key| key[0] == src_map && key[1] == src_id}
    keys.each{|key|hash[[tar_map,tar_id, key[2]]] = hash[key]}
  end
  #--------------------------------------------------------------------------
  # * Clean SV
  #--------------------------------------------------------------------------
  def clean(map,id)
    hash = $game_self_vars
    keys = hash.keys.select{|key| key[0] == map && key[1] == id} 
    keys.each{|key| hash.delete(key)}
  end
end

#==============================================================================
# ** SL
#------------------------------------------------------------------------------
#  self Labels handling API
#==============================================================================

module SL
  #--------------------------------------------------------------------------
  # * Copy SL from event to another
  #--------------------------------------------------------------------------
  def copy(src_map,src_id,tar_map,tar_id)
    hash = $game_self_labels
    keys = hash.keys.select{|key| key[0] == src_map && key[1] == src_id}
    keys.each{|key|hash[[tar_map,tar_id, key[2]]] = hash[key]}
  end
  #--------------------------------------------------------------------------
  # * Clean SL
  #--------------------------------------------------------------------------
  def clean(map,id)
    hash = $game_self_labels
    keys = hash.keys.select{|key| key[0] == map && key[1] == id} 
    keys.each{|key| hash.delete(key)}
  end
end

#==============================================================================
# ** Game_SelfSwitches
#------------------------------------------------------------------------------
#  This class handles self switches. It's a wrapper for the built-in class
# "Hash." The instance of this class is referenced by $game_self_switches.
#==============================================================================

class Game_SelfSwitches
  attr_reader :data 
end

#==============================================================================
# ** SS (special thanks to Zeus81)
#------------------------------------------------------------------------------
#  Self Switches handling API
#==============================================================================

module SS
  #--------------------------------------------------------------------------
  # * Copy SS from event to another
  #--------------------------------------------------------------------------
  def copy(src_map,src_id,tar_map,tar_id)
    data = $game_self_switches.data
    hash = $game_self_switches
    keys = data.keys.select{|key| key[0] == src_map && key[1] == src_id}
    keys.each{|key|hash[[tar_map,tar_id, key[2]]] = hash[key]}
  end
  #--------------------------------------------------------------------------
  # * Clean SS
  #--------------------------------------------------------------------------
  def clean(map,id)
    data = $game_self_switches.data
    hash = $game_self_switches
    keys = data.keys.select{|key| key[0] == map && key[1] == id} 
    keys.each{|key| hash[key] = false}
  end
end

