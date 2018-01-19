# Legend of Zelda

use_bpm 160
#use_bpm 250

# Bass----------------------------------------------------------------------------
in_thread do
  #sleep 300
  originalbass
end

define :bass1 do
  use_synth :pulse
  use_synth_defaults env_curve: 6
  play_pattern_timed [:Bb2, :Bb2, :Bb2, :F2, :Bb2, :Bb2], [1.2, 0.4, 0.4, 0.4, 1.2, 1.2]
end

define :bass2 do
  use_synth :pulse
  use_synth_defaults env_curve: 6
  play_pattern_timed [:F2, :F2, :F2, :F2, :F2, :F2, :F2, :G2, :A2], [0.6, 0.3, 0.3, 0.6, 0.3, 0.3, 1.2, 0.6, 0.6]
end

define :originalbass do
  use_synth :pulse
  use_synth_defaults env_curve: 6
  3.times do
    play_pattern_timed [:Bb2, :Bb2, :Bb2, :F2, :Bb2, :Bb2,
                        :Ab2, :Ab2, :Ab2, :Eb2, :Ab2, :Ab2,
                        :Gb2, :Gb2, :Gb2, :Db2, :Gb2, :Gb2,
                        :Db3, :Db3, :Db3, :Ab2, :Db3, :Db3,
                        :B2, :B2, :B2, :Gb2, :B2, :B2,
                        :Bb2, :Bb2, :Bb2, :F2, :Bb2, :Bb2,
                        :C3, :C3, :C3, :G2, :C3, :C3,
    :F2, :F2, :F2, :F2, :F2, :F2, :F2, :G2, :A2],
      [1.2, 0.4, 0.4, 0.4, 1.2, 1.2,
       1.2, 0.4, 0.4, 0.4, 1.2, 1.2,
       1.2, 0.4, 0.4, 0.4, 1.2, 1.2,
       1.2, 0.4, 0.4, 0.4, 1.2, 1.2,
       1.2, 0.4, 0.4, 0.4, 1.2, 1.2,
       1.2, 0.4, 0.4, 0.4, 1.2, 1.2,
       1.2, 0.4, 0.4, 0.4, 1.2, 1.2,
       0.6, 0.3, 0.3, 0.6, 0.3, 0.3, 1.2, 0.6, 0.6]
      end
end




# Melody-------------------------------------------------------------------------
in_thread do
  #sleep 300
  use_synth :pulse
  #use_synth_defaults
  #sleep 38.4
  2.times do
    play_pattern_timed [:Bb4, :F4, :Bb4, :Bb4, :C5, :D5, :Eb5, # measure 9
                        :F5, :F5, :F5, :Gb5, :Ab5, # measure 10
                        :Bb5, :Bb5, :Bb5, :Ab5, :Gb5, # measure 11
                        :Ab5, :Gb5, :F5, :F5, # measure 12
                        :Eb5, :Eb5, :F5, :Gb5, :F5, :Eb5, # measure 13
                        :Db5, :Db5, :Eb5, :F5, :Eb5, :Db5, # measure 14
                        :C5, :C5, :D5, :E5, :G5, # measure 15
    :F5, :F4, :F4, :F4, :F4, :F4, :F4], # measure 16
      [1.2, 1.8, 0.6, 0.3, 0.3, 0.3, 0.3, # measure 9
       3.0, 0.6, 0.4, 0.4, 0.4, # measure 10
       3.2, 0.4, 0.4, 0.4, 0.4, # measure 11
       0.9, 0.3, 2.4, 1.2, # measure 12
       0.6, 0.3, 0.3, 2.4, 0.6, 0.6, # measure 13
       0.6, 0.3, 0.3, 2.4, 0.6, 0.6, # measure 14
       0.6, 0.3, 0.3, 2.4, 1.2, # measure 15
       0.6, 0.3, 0.3, 0.6, 0.3, 0.3, 1.2] # measure 16
    sleep 1.2
  end
end

# Harmony-------------------------------------------------------------------------
in_thread do
  use_synth :pulse
  #use_synth_defaults
  #sleep 76.8
  1.times do
    play_pattern_timed [:F4, :D4, :D4, :C4, :D4, :D4, :D4, :Eb4, :F4, :G4, # measure 17
                        :Ab4, :Bb3, :Bb3, :C4, :D4, :Eb4, :F4, :Ab3, :Ab3, :Bb3, :C4, #:D5, :D5, :Eb5, :F5, # measure 18
                        :Db4, #:Gb5, :Gb5, :Gb5, :F5, :Eb5, # m 19
                        :F5, :Eb5, :Db5, :Db5, # m 20
                        :C5, :C5, :Db5, :Eb5, :Db5, :C5, # m 21
                        :Bb4, :Bb4, :C5, :Db5, # m 22
    ],
      [1.2, 0.4, 0.4, 0.4, 0.9, 0.3, 0.3, 0.3, 0.3, 0.3, # m 17
       0.9, 0.3, 0.3, 0.3, 0.3, 0.3, 0.8, 0.4, 0.4, 0.4, # m 18
       3.2, 0.4, 0.4, 0.4, 0.4, # measure 19
       0.9, 0.3, 2.4, 1.2, # measure 20
       0.6, 0.3, 0.3, 2.4, 0.6, 0.6, # measure 21
       0.6, 0.3, 0.3, 2.4, 0.6, 0.6, # measure 22
       0.6, 0.3, 0.3, 2.4, 1.2, # measure 23
       0.6, 0.3, 0.3, 0.6, 0.3, 0.3, 1.2] # m 24
  end
end