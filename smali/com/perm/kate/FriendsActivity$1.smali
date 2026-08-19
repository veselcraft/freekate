.class Lcom/perm/kate/FriendsActivity$1;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "FriendsActivity.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsActivity;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/perm/kate/FriendsActivity$1;->this$0:Lcom/perm/kate/FriendsActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/perm/kate/FriendsActivity$1;->this$0:Lcom/perm/kate/FriendsActivity;

    iget-object v0, v0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v0, p1}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/perm/kate/FriendsActivity$1;->this$0:Lcom/perm/kate/FriendsActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/FriendsActivity;->access$100(Lcom/perm/kate/FriendsActivity;Ljava/lang/String;)V

    .line 173
    iget-object p1, p0, Lcom/perm/kate/FriendsActivity$1;->this$0:Lcom/perm/kate/FriendsActivity;

    invoke-virtual {p1}, Lcom/perm/kate/FriendsActivity;->displayRefreshState()V

    return-void
.end method
