.class Lcom/perm/kate/NewsFragment$24;
.super Lcom/perm/kate/session/Callback;
.source "NewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$24;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 1102
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 1103
    .local v0, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/NewsList;>;"
    if-eqz v0, :cond_0

    .line 1104
    iget-object v1, p0, Lcom/perm/kate/NewsFragment$24;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-static {v1, v0}, Lcom/perm/kate/NewsFragment;->access$1602(Lcom/perm/kate/NewsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1105
    :cond_0
    return-void
.end method
