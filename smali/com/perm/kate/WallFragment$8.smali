.class Lcom/perm/kate/WallFragment$8;
.super Ljava/lang/Object;
.source "WallFragment.java"

# interfaces
.implements Lcom/perm/utils/RepostHelper$RepostCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/WallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/WallFragment;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/perm/kate/WallFragment$8;->this$0:Lcom/perm/kate/WallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lcom/perm/kate/api/WallMessage;)V
    .locals 1
    .param p1, "counts"    # Lcom/perm/kate/api/WallMessage;

    .prologue
    .line 476
    iget-object v0, p0, Lcom/perm/kate/WallFragment$8;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v0}, Lcom/perm/kate/WallFragment;->requeryOnUiThread()V

    .line 477
    return-void
.end method
