.class Lcom/perm/kate/AudioFragment$16;
.super Ljava/lang/Thread;
.source "AudioFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;

.field final synthetic val$aid:Ljava/lang/Long;

.field final synthetic val$owner_id:Ljava/lang/Long;

.field final synthetic val$to_album_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$16;->this$0:Lcom/perm/kate/AudioFragment;

    iput-object p2, p0, Lcom/perm/kate/AudioFragment$16;->val$owner_id:Ljava/lang/Long;

    iput-object p3, p0, Lcom/perm/kate/AudioFragment$16;->val$aid:Ljava/lang/Long;

    iput-object p4, p0, Lcom/perm/kate/AudioFragment$16;->val$to_album_id:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/AudioFragment$16;->val$owner_id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/AudioFragment$16;->val$aid:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 684
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/AudioFragment$16;->val$to_album_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/perm/kate/AudioFragment$16;->val$owner_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, p0, Lcom/perm/kate/AudioFragment$16;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$2500(Lcom/perm/kate/AudioFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v8

    iget-object v0, p0, Lcom/perm/kate/AudioFragment$16;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-virtual/range {v2 .. v9}, Lcom/perm/kate/session/Session;->removeFromAudioAlbum(Ljava/lang/String;JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
