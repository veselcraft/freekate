.class Lcom/perm/kate/FriendsActivity$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "FriendsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FriendsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FriendsActivity;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/perm/kate/FriendsActivity$1;->this$0:Lcom/perm/kate/FriendsActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 168
    iget-object v1, p0, Lcom/perm/kate/FriendsActivity$1;->this$0:Lcom/perm/kate/FriendsActivity;

    iget-object v1, v1, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, p1}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    iget-object v0, v1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    .line 169
    .local v0, "new_tab":Ljava/lang/String;
    iget-object v1, p0, Lcom/perm/kate/FriendsActivity$1;->this$0:Lcom/perm/kate/FriendsActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/FriendsActivity;->access$100(Lcom/perm/kate/FriendsActivity;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/perm/kate/FriendsActivity$1;->this$0:Lcom/perm/kate/FriendsActivity;

    invoke-virtual {v1}, Lcom/perm/kate/FriendsActivity;->displayRefreshState()V

    .line 171
    return-void
.end method
