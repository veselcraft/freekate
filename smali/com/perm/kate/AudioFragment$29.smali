.class Lcom/perm/kate/AudioFragment$29;
.super Lcom/perm/kate/session/Callback;
.source "AudioFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V
    .locals 0

    .line 1151
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$29;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$29;->this$0:Lcom/perm/kate/AudioFragment;

    check-cast p1, Lcom/perm/kate/api/AudioAlbum;

    iput-object p1, v0, Lcom/perm/kate/AudioFragment;->playlist:Lcom/perm/kate/api/AudioAlbum;

    :cond_0
    return-void
.end method
