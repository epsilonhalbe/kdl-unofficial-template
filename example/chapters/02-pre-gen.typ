#import "/template/main.typ" as kult

= Pre-Gens<pre-gens>

== The Artist<the-artist>
#columns(2)[
=== Skills<the-artist_skills>
#kult.skill-tree(
  will: 0, fort: 2, refl: 1,
  reas: 2, intu: -2, perc: 3, cool: 1, viol: -1, char: 1, soul: 0,
)

=== Stability<the-artist_stability>
#kult.stability

=== Wounds<the-artist_wounds>
#kult.wounds

===  Background<the-artist_background>
==== Name<the-artist_name>
\
==== Occupation<the-artist_occupation>
Stage magician/Etsy shop

==== Close Relationship<the-artist_close-relationship>
Daughter Yumiko (17), who comes visiting despite you and her mother have split up 2 years ago.

==== Dark Secret: Heir<the-artist_dark-secret>
You've inherited the antique bookshop of your late father Hiram. You
never wanted to work there, it is boring work for boring people and the
assistant of your father, Mr.~Adkinson, is creepy straight out of the
Addams Family, or Frankenstein. You never understood how he could make a
living selling occult books to students and wiccans. And indeed the
accounting numbers are bright red. Maybe you can sell the ring Lurch
gave you.

==== Notable Items<the-artist_items>
The ring you inherited

=== Advantages<the-artist_advantages>

#kult.move(
  title: [Body Awareness],
  tag: "body-awareness",
  description: [Your body and mind are as one. Whenever you perform acrobatic or agile feats:],
  attribute: kult.attrs.cool.name,
  success: "Choose one option.",
  complications: "Choose one option, but you expose yourself to danger or incur a cost.",
  failure: "Choose one option, but something goes very wrong. The GM makes a Move.",
  more: [
    *Options:*
      - Escape bindings or restraints.
      - Get past an obstacle (creature or object).
      - Get into or make it through a space you normally wouldn't be able to.
    @KULT-core[p.~108]
    ]
)

#kult.move(
  title: "Artifact",
  tag: "artifact",
  description: [
    Your ring actually possesses mystical powers. Its powers can be activated
    through whispering forbidden words. #emph[I the honourable \<insert name\>,
    pledge to repay this favour with blood or gold, when the time has come.]
    Whenever you activate the object:
  ],
  attribute: kult.attrs.soul.name,
  success: [Choose one option (the GM determines what happens).],
  complications: [
    Choose one option (the GM determines what happens). However, the artifact
    also exacts an additional price (the GM determines what is required).
  ],
  failure: [The artifact does something unexpected, possibly dangerous. The GM makes a Move.],
  more: [
    #strong[Suggested options:]
    - Receive a vision of what threatens you.
    - Get yourself out of a bind.
    @KULT-core[p.~113]
  ]
)

#kult.move(
  title: "Enhanced Awareness",
  tag: "enhanced-awareness",
  description: [
    When you focus your senses at a location where the Illusion is weak, .
    On a success, you have visions about the place and may be able to speak
    to entities tied to it:
  ],
  attribute: kult.attrs.soul.name,
  success: [You can discern clear details regarding the location.],
  complications: [You get some basic impressions regarding the location.],
  failure: [
    The Illusion tears. The veil is lifted temporarily, revealing an
    alternate dimension – the GM determines which one. The PC could be
    sucked into it or something may cross over into our reality. The GM
    makes a Move.
  ],
  more: [
    @KULT-core[p.~114]
  ]
)

=== Disadvantages<the-artist_disadvantages>
#kult.move(
  title: "Nightmares",
  tag: "nightmares",
  description: [
    You suffer from recurring nightmares, probably connected to your Dark
    Secrets. During any scene when you sleep:
  ],
  attribute: kult.attrs.dis.name,
  success: [You sleep in peace.],
  complications: [
    The nightmares torment you. The GM may make a Move for your nightmares.
    For example, you are unable to sleep at all during the night (-1 ongoing
    until you sleep), something follows you back into reality, the
    nightmares provide you insight into the Truth, or you are forced to
    process some trauma (#kult.attrs.will.move) when you wake up.
  ],
  failure: [
    The nightmares take over completely. You are trapped in the dream until
    you find a way to wake up, and everything that happens there also
    directly affects your sleeping body.
  ],
  more: [
    @KULT-core[p.~99]
  ]
)

#kult.move(
  title: "Drug Addict",
  tag: "drug-addict",
  description: [
    You are addicted to Alcohol and cocaine. At the beginning of the game
    and whenever you have been using, or have the opportunity to use:
  ],
  attribute: kult.attrs.dis.name,
  success: [You are in control of the urge, for now.],
  complications: [The GM takes 1 Hold.],
  failure: [The GM takes 3 Hold.],
  more:[
    The GM may spend Hold to make a Move for your addiction. For example,
    you cannot resist using the drug, run out of drugs, become indebted to a
    dangerous person, put yourself in danger while under the influence of
    drugs, or ruin some-thing important to you – like a relationship – while
    under the influence.\
    @KULT-core[p.~97]
  ]
)

#colbreak()
=== Character progression<the-artist_progress>

==== Experience<the-artist_xp>
#kult.experience

==== Advancements<the-artist_advancements>
#kult.advancements
]
