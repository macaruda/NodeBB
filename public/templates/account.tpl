
<div class="well">
    <div class="alert" id="message" style="display:none">
        <button type="button" class="close" data-dismiss="message">&times;</button>
        <strong></strong>
        <p></p>
    </div>

	<!-- BEGIN user -->
	
	<div class="account-username-box">
		<span class="account-username">{user.username}</span>
		<span class="pull-right"><a href="/users/{user.username}/edit">edit</a></span>
	</div>
	<br/>		
		
	<div class="account-picture-block">
		<img src="{user.picture}?s=128" />
	</div>
	
	<div class="account-bio-block">
		<span class="account-bio-label">email</span>
		<span>{user.email}</span>
		<br/>
		
		<span class="account-bio-label">member for</span>
		<span>{user.joindate}</span>
		<br/>

		<span class="account-bio-label">reputation</span>
		<span id='reputation'>{user.reputation}</span>
		<br/>		
		
		<span class="account-bio-label">posts</span>
		<span id='postcount'>{user.postcount}</span>
	</div>
	
	
    <label for="email">Email Address</label><input type="text" placeholder="Enter Email Address" id="email" /><br />
    <button class="btn btn-primary" id="reset" type="submit">Reset Password</button>


	<!-- END user -->



</div>
<script type="text/javascript">
(function() {
    
    function addCommas(text) {
        return text.replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,");
    }
    
    $(document).ready(function() {
        var rep = $('#reputation');
        rep.html(addCommas(rep.html()));
        
        var postcount = $('#postcount');
        postcount.html(addCommas(postcount.html()));
        
    });
    

}());
</script>