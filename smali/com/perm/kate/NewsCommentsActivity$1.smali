.class Lcom/perm/kate/NewsCommentsActivity$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "NewsCommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewsCommentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsCommentsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsCommentsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewsCommentsActivity;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/perm/kate/NewsCommentsActivity$1;->this$0:Lcom/perm/kate/NewsCommentsActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 99
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsActivity$1;->this$0:Lcom/perm/kate/NewsCommentsActivity;

    iget-object v1, v1, Lcom/perm/kate/NewsCommentsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, p1}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    iget-object v0, v1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    .line 100
    .local v0, "new_tab":Ljava/lang/String;
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsActivity$1;->this$0:Lcom/perm/kate/NewsCommentsActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/NewsCommentsActivity;->access$000(Lcom/perm/kate/NewsCommentsActivity;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsActivity$1;->this$0:Lcom/perm/kate/NewsCommentsActivity;

    invoke-virtual {v1}, Lcom/perm/kate/NewsCommentsActivity;->displayRefreshState()V

    .line 102
    return-void
.end method
