.class public Lcom/perm/kate/UploadProgressDisplayerToNotification;
.super Ljava/lang/Object;
.source "UploadProgressDisplayerToNotification.java"

# interfaces
.implements Lcom/perm/utils/UploadProgressListener;


# instance fields
.field max:I

.field notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

.field progress:I


# direct methods
.method public constructor <init>(Lcom/perm/kate/notifications/PhotoUploadNotification;)V
    .locals 1
    .param p1, "notification"    # Lcom/perm/kate/notifications/PhotoUploadNotification;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0x64

    iput v0, p0, Lcom/perm/kate/UploadProgressDisplayerToNotification;->max:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/UploadProgressDisplayerToNotification;->progress:I

    .line 15
    iput-object p1, p0, Lcom/perm/kate/UploadProgressDisplayerToNotification;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    .line 16
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    .line 17
    return-void
.end method


# virtual methods
.method public publishProgress(J)V
    .locals 5
    .param p1, "currentValue"    # J

    .prologue
    .line 21
    const-string v0, "Kate.UploadProgressDisplayerToNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    long-to-int v0, p1

    iput v0, p0, Lcom/perm/kate/UploadProgressDisplayerToNotification;->progress:I

    .line 23
    iget-object v0, p0, Lcom/perm/kate/UploadProgressDisplayerToNotification;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    iget v1, p0, Lcom/perm/kate/UploadProgressDisplayerToNotification;->max:I

    iget v2, p0, Lcom/perm/kate/UploadProgressDisplayerToNotification;->progress:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/notifications/PhotoUploadNotification;->display(IIZ)V

    .line 24
    return-void
.end method

.method public setTotalAmount(J)V
    .locals 5
    .param p1, "totalAmount"    # J

    .prologue
    .line 28
    long-to-int v0, p1

    iput v0, p0, Lcom/perm/kate/UploadProgressDisplayerToNotification;->max:I

    .line 29
    iget-object v0, p0, Lcom/perm/kate/UploadProgressDisplayerToNotification;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    iget v1, p0, Lcom/perm/kate/UploadProgressDisplayerToNotification;->max:I

    iget v2, p0, Lcom/perm/kate/UploadProgressDisplayerToNotification;->progress:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/notifications/PhotoUploadNotification;->display(IIZ)V

    .line 30
    return-void
.end method
