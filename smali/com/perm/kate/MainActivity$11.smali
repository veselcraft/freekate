.class Lcom/perm/kate/MainActivity$11;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MainActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MainActivity;

    .prologue
    .line 912
    iput-object p1, p0, Lcom/perm/kate/MainActivity$11;->this$0:Lcom/perm/kate/MainActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 916
    iget-object v1, p0, Lcom/perm/kate/MainActivity$11;->this$0:Lcom/perm/kate/MainActivity;

    iget-object v1, v1, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, p1}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    iget-object v0, v1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    .line 917
    .local v0, "new_tab":Ljava/lang/String;
    iget-object v1, p0, Lcom/perm/kate/MainActivity$11;->this$0:Lcom/perm/kate/MainActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/MainActivity;->access$1000(Lcom/perm/kate/MainActivity;Ljava/lang/String;)V

    .line 918
    iget-object v1, p0, Lcom/perm/kate/MainActivity$11;->this$0:Lcom/perm/kate/MainActivity;

    invoke-virtual {v1}, Lcom/perm/kate/MainActivity;->displayRefreshState()V

    .line 919
    return-void
.end method
