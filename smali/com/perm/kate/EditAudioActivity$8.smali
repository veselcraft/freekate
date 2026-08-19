.class Lcom/perm/kate/EditAudioActivity$8;
.super Ljava/lang/Object;
.source "EditAudioActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditAudioActivity;->displayOnUiThread()V
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

    .line 157
    iput-object p1, p0, Lcom/perm/kate/EditAudioActivity$8;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity$8;->this$0:Lcom/perm/kate/EditAudioActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 161
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity$8;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
