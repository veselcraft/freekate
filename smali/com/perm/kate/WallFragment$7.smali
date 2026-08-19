.class Lcom/perm/kate/WallFragment$7;
.super Ljava/lang/Object;
.source "WallFragment.java"

# interfaces
.implements Lcom/perm/utils/RepostHelper$RepostCallback;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/perm/kate/WallFragment$7;->this$0:Lcom/perm/kate/WallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lcom/perm/kate/api/WallMessage;)V
    .locals 0

    .line 481
    iget-object p1, p0, Lcom/perm/kate/WallFragment$7;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {p1}, Lcom/perm/kate/WallFragment;->requeryOnUiThread()V

    return-void
.end method
