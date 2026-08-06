.class Lcom/perm/kate/ProfileFragment$13;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 911
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$13;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 914
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$13;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$13;->this$0:Lcom/perm/kate/ProfileFragment;

    iget-object v1, v1, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/perm/kate/ProfileFragment;->ShowAudioAcivity(Landroid/app/Activity;Ljava/lang/Long;)V

    .line 915
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$13;->this$0:Lcom/perm/kate/ProfileFragment;

    const-string v1, "audio"

    invoke-static {v0, v1}, Lcom/perm/kate/ProfileFragment;->access$1900(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)V

    .line 916
    return-void
.end method
