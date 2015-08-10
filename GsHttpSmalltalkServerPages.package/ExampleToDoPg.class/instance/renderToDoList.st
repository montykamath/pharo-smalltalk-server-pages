rendering
renderToDoList

	^SspHtmlStream streamContents:
		[:str |
		str form: 'method="get" action="/todo.ssp"' with:
			[str input: 'type="text" name="toAdd" size="7"'.
			str input: 'type="submit" name="action" value="add"'.
			str input: 'type="submit" name="action" value="clear"'].
		str paragraph.
		self toDoList doWithIndex: 
			[:each :idx | 
			str break.
			str nextPutText: each.
			str space.
			str anchor: ('/todo.ssp?action=up&idx=', idx asString) with: '(up)'.
			str space.
			str anchor: ('/todo.ssp?action=down&idx=', idx asString) with: '(down)'.
			str space.
			str anchor: ('/todo.ssp?action=remove&idx=', idx asString) with: '(remove)'.]]