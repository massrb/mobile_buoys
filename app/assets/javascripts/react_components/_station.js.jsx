var Station = React.createClass({
	handleClick: function() {
		console.log("click", this.props.id);
		window.location = "/prof-id/" + this.props.id.toString();
	},
	render: function(){
		return(
		<tr>
		  <td onClick={this.handleClick}>{this.props.name}</td>
			<td>{this.props.wvht}@{this.props.dpd}</td>
			<td>{this.props.wdir}@{this.props.wspd}</td>
			<td>{this.props.timeof}</td>
		</tr>
		)
	}
	
});