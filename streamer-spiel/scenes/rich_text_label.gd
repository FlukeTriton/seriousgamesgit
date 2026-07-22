extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if GameManager.current_day == 1:
		text = "To do:

-Gewitter öffnen (die sollten bald die Nominierten für diese Award-Show verkündigen)
-Guck mal nach einem Outfit für den Stream:3 (klar Leute können komsich darüber sein, aber ich möchte ja auch cute aussehen :D)
-Muss bisschen gucken ob nicht irgendwelche Tiere in meinen Garten reingekommen sind (der ist ja schon ziemlich offen und da könnten alle möglichen Leute und Kreaturen reinkommen...)
-STREAMEN!!
	-Ich muss definitive gucken, dass ich es schaffe meinen Chat zu moderieren...vielleicht lösche ich die negativen Nachrichten einfach qwq

Ich hoffe wirklich, ich werde auch nominiert...schließlich habe ich so hard gearbeitet um hier hin zu kommen. Aber selbst, wenn ich nominiert werde, muss ich ja trotzdem noch mehr views bekommen, als die anderen. Oh man, hoffentlich werden die nicht wütend. Naja ist ja nur ein freundlicher Wettbewerb, dass wird schon passen.

Oki, dass sollte es sein. Viel Glück an Zukunfts-Ich! Mögest du einen guten Tag haben :3"

	if GameManager.current_day == 2:
		text = "OMG. Oh mein Gott. Ich wurde nominiert! Das ist amazaing!!
		
To do:

-STREAMEN!! (noch mehr als sonst, jetzt muss ich mich ranhalten)
-Auf Gewitter nach schauen, was so die anderen nominierten Leute machen (die Konkurenz kennen lernen >:3)

Ich habe es gestern nicht mehr geschafft, mein Gartentor zu reparieren, oh man :( Und mein Chat wird auch immer wilder, jetzt wo mehr Leuet zuschauen. Ich muss echt drauf achten, dass ich diese böden Nachrichten nicht lese, ich bin immer so erschöpft am nächsten Tag, weil ich Nachts wach liege und darüber nachdeme T_T 
Egal, jetzt habe ich wichtigere Dinge zu tun. Ich frage mich, was dieser Brad vor hat. Der scheint sich ja alle Teilnehmer gut angeschaut zu haben...Naja, auch das ist nicht der Fokus. Streaming_Time! 
You've got this!"

	if GameManager.current_day == 3:
		text = "Ach du Scheiße. Ich bin heute nach aufgewacht und ich könnte schwören, da war jemand an meinem Fenser. Ich bin sofort aufgestanden, aber ich habe niemanden mehr geshen. Das nacht mir schon Sorgen, aber falls die wieder kommen (hoffentlich nicht!), verziehen sie sich bestimmt auch wieder, wenn ich sie ein bisschen anschreie, die habe doch bestimmt Angst entdeckt zu werden. Ja, genau, das passt schon!
Warum ist Brad den so auf mich fokusiert? Ich habe ja nie irgedwas über ihn gesagt :(
		
To do:

-STREAMEN (ich darf ja schließlich nicht an Abonenten verlieren)
-einen weiteren Tag auf Gewitter verbringen
-definitive aus dem Fenster gucken

Du hällst das aus, ZUkunfts-Ich, ich glaube an dich >:3"

	if GameManager.current_day == 4:
		text = "Es stehen wirklich Leute in meinem Garten. Die ganze Zeit. Die schauen hier rein und pochen gegen die Wände. Ich fühle mich acuh escht nicht sooo sicher.
Und die Fans von Brad scheinen mich acuh echt gar nicht zu mögen. Was ist den drern Problem. Keine Ahnung. Die hassen mich einfach.

To do:

-Stream (und tu so als wäre alles oki, du bist do nah dran)
-Schrei die Leute unter deinem Fenster an, oder bedroh die, was auch immer sein muss um die los zu werden (woher haben die alle meine Adresse)
"

	if GameManager.current_day == 5:
		text = "Ich kann nicht mehr. Jeden Tag werden es mehr Kommentare und mehr leute und mehr Nachrichten auf Gewitter, Ich kann nicht mehr rausgehen und ich habe Angst onlie zu gehen udn so tun als wäre alles ok oder raus zugucken und eine Menschenmenge in einem garten zu sehen, die mir ei8ndeutig etwas anhaben will, keine Ahnung was in welcher Weiße.

Hoffentlich hört das balt alles auf, wenn der Gewinner dieser Award show bekannt gegeben wird. Bin ich da überhaupt noch im Rennen zum Gewinner? Bin mir ehrlich gesagt nicht mehr sicher.
Ich wollte doch einfach nur streamen.
Noch einen Tag.

To do:

-Fenster. Gewitter. Streamen."
