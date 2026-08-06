.class Lcom/perm/kate/ProfileInfoFragment$8;
.super Ljava/lang/Thread;
.source "ProfileInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ProfileInfoFragment;->downloadAvatarsAlbum()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileInfoFragment;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$8;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 588
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment$8;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    iget-object v1, v1, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    const-wide/16 v4, -0x6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/perm/kate/ProfileInfoFragment$8;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {v4}, Lcom/perm/kate/ProfileInfoFragment;->access$800(Lcom/perm/kate/ProfileInfoFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    iget-object v4, p0, Lcom/perm/kate/ProfileInfoFragment$8;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-virtual {v4}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    move-object v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->getPhotos(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 589
    return-void
.end method
