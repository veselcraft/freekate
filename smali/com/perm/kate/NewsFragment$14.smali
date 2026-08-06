.class Lcom/perm/kate/NewsFragment$14;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Lcom/perm/utils/RepostHelper$RepostCallback;


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
.method constructor <init>(Lcom/perm/kate/NewsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewsFragment;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$14;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lcom/perm/kate/api/WallMessage;)V
    .locals 2
    .param p1, "counts"    # Lcom/perm/kate/api/WallMessage;

    .prologue
    .line 706
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$14;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewsFragment;->requeryOnUiThread(Z)V

    .line 707
    return-void
.end method
