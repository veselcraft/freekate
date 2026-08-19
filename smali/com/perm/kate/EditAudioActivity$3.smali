.class Lcom/perm/kate/EditAudioActivity$3;
.super Ljava/lang/Object;
.source "EditAudioActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditAudioActivity;->displayTextOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditAudioActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditAudioActivity;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/perm/kate/EditAudioActivity$3;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity$3;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-static {v0}, Lcom/perm/kate/EditAudioActivity;->access$200(Lcom/perm/kate/EditAudioActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity$3;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-static {v0}, Lcom/perm/kate/EditAudioActivity;->access$400(Lcom/perm/kate/EditAudioActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/EditAudioActivity$3;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-static {v1}, Lcom/perm/kate/EditAudioActivity;->access$200(Lcom/perm/kate/EditAudioActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
