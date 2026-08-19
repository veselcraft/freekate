.class Lcom/perm/kate/NewsCommentsActivity$1;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
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

    .line 95
    iput-object p1, p0, Lcom/perm/kate/NewsCommentsActivity$1;->this$0:Lcom/perm/kate/NewsCommentsActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsActivity$1;->this$0:Lcom/perm/kate/NewsCommentsActivity;

    iget-object v0, v0, Lcom/perm/kate/NewsCommentsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v0, p1}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsActivity$1;->this$0:Lcom/perm/kate/NewsCommentsActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/NewsCommentsActivity;->access$000(Lcom/perm/kate/NewsCommentsActivity;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/perm/kate/NewsCommentsActivity$1;->this$0:Lcom/perm/kate/NewsCommentsActivity;

    invoke-virtual {p1}, Lcom/perm/kate/NewsCommentsActivity;->displayRefreshState()V

    return-void
.end method
