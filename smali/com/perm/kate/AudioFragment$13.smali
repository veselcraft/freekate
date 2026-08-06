.class Lcom/perm/kate/AudioFragment$13;
.super Ljava/lang/Thread;
.source "AudioFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioFragment;->moveToAlbum(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;

.field final synthetic val$aid:Ljava/lang/Long;

.field final synthetic val$gid:Ljava/lang/Long;

.field final synthetic val$to_album_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 550
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$13;->this$0:Lcom/perm/kate/AudioFragment;

    iput-object p2, p0, Lcom/perm/kate/AudioFragment$13;->val$aid:Ljava/lang/Long;

    iput-object p3, p0, Lcom/perm/kate/AudioFragment$13;->val$to_album_id:Ljava/lang/Long;

    iput-object p4, p0, Lcom/perm/kate/AudioFragment$13;->val$gid:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 553
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 554
    .local v1, "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$13;->val$aid:Ljava/lang/Long;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/AudioFragment$13;->val$to_album_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/AudioFragment$13;->val$gid:Ljava/lang/Long;

    iget-object v5, p0, Lcom/perm/kate/AudioFragment$13;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v5}, Lcom/perm/kate/AudioFragment;->access$1800(Lcom/perm/kate/AudioFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/AudioFragment$13;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v6}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->moveToAudioAlbum(Ljava/util/Collection;JLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 556
    return-void
.end method
