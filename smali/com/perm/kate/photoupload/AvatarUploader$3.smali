.class Lcom/perm/kate/photoupload/AvatarUploader$3;
.super Ljava/lang/Object;
.source "AvatarUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/photoupload/AvatarUploader;->dismissProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/AvatarUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/AvatarUploader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/photoupload/AvatarUploader;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/perm/kate/photoupload/AvatarUploader$3;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader$3;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    iget-object v0, v0, Lcom/perm/kate/photoupload/AvatarUploader;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 148
    return-void
.end method
