.class Lcom/perm/kate/NewsFragment$14;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Lcom/perm/utils/RepostHelper$RepostCallback;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;)V
    .locals 0

    .line 728
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$14;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lcom/perm/kate/api/WallMessage;)V
    .locals 1

    .line 731
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$14;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/NewsFragment;->requeryOnUiThread(Z)V

    return-void
.end method
