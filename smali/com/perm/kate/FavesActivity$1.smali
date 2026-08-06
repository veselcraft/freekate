.class Lcom/perm/kate/FavesActivity$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "FavesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FavesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavesActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FavesActivity;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/perm/kate/FavesActivity$1;->this$0:Lcom/perm/kate/FavesActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 78
    iget-object v1, p0, Lcom/perm/kate/FavesActivity$1;->this$0:Lcom/perm/kate/FavesActivity;

    iget-object v1, v1, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, p1}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    iget-object v0, v1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    .line 79
    .local v0, "new_tab":Ljava/lang/String;
    iget-object v1, p0, Lcom/perm/kate/FavesActivity$1;->this$0:Lcom/perm/kate/FavesActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/FavesActivity;->access$000(Lcom/perm/kate/FavesActivity;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/perm/kate/FavesActivity$1;->this$0:Lcom/perm/kate/FavesActivity;

    invoke-virtual {v1}, Lcom/perm/kate/FavesActivity;->displayRefreshState()V

    .line 81
    return-void
.end method
