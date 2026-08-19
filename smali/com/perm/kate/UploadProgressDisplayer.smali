.class public Lcom/perm/kate/UploadProgressDisplayer;
.super Ljava/lang/Object;
.source "UploadProgressDisplayer.java"

# interfaces
.implements Lcom/perm/utils/UploadProgressListener;


# instance fields
.field handler:Landroid/os/Handler;

.field pd:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/ProgressDialog;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/UploadProgressDisplayer;->handler:Landroid/os/Handler;

    .line 14
    iput-object p1, p0, Lcom/perm/kate/UploadProgressDisplayer;->pd:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public publishProgress(J)V
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kate.UploadProgressDisp"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v0, p0, Lcom/perm/kate/UploadProgressDisplayer;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/perm/kate/UploadProgressDisplayer$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/perm/kate/UploadProgressDisplayer$1;-><init>(Lcom/perm/kate/UploadProgressDisplayer;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setTotalAmount(J)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/perm/kate/UploadProgressDisplayer;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/perm/kate/UploadProgressDisplayer$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/perm/kate/UploadProgressDisplayer$2;-><init>(Lcom/perm/kate/UploadProgressDisplayer;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
