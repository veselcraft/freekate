.class Lcom/perm/kate/SearchWallActivity$4;
.super Lcom/perm/kate/session/Callback;
.source "SearchWallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchWallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchWallActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchWallActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SearchWallActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/perm/kate/SearchWallActivity$4;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 199
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 200
    .local v0, "_wall_messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/WallMessage;>;"
    iget-object v1, p0, Lcom/perm/kate/SearchWallActivity$4;->this$0:Lcom/perm/kate/SearchWallActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/perm/kate/SearchWallActivity;->access$700(Lcom/perm/kate/SearchWallActivity;Ljava/util/ArrayList;Z)V

    .line 201
    iget-object v1, p0, Lcom/perm/kate/SearchWallActivity$4;->this$0:Lcom/perm/kate/SearchWallActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/SearchWallActivity;->showProgressBar(Z)V

    .line 202
    return-void
.end method
