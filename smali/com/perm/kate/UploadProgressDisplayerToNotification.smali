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

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 12
    iput v0, p0, Lcom/perm/kate/UploadProgressDisplayerToNotification;->max:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/UploadProgressDisplayerToNotification;->progress:I

    .line 15
    iput-object p1, p0, Lcom/perm/kate/UploadProgressDisplayerToNotification;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    .line 16
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

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

    const-string v1, "Kate.UploadProgressDiTN"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int p2, p1

    .line 22
    iput p2, p0, Lcom/perm/kate/UploadProgressDisplayerToNotification;->progress:I

    .line 23
    iget-object p1, p0, Lcom/perm/kate/UploadProgressDisplayerToNotification;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    iget v0, p0, Lcom/perm/kate/UploadProgressDisplayerToNotification;->max:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lcom/perm/kate/notifications/PhotoUploadNotification;->display(IIZ)V

    return-void
.end method

.method public setTotalAmount(J)V
    .locals 2

    long-to-int p2, p1

    .line 28
    iput p2, p0, Lcom/perm/kate/UploadProgressDisplayerToNotification;->max:I

    .line 29
    iget-object p1, p0, Lcom/perm/kate/UploadProgressDisplayerToNotification;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    iget v0, p0, Lcom/perm/kate/UploadProgressDisplayerToNotification;->progress:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/perm/kate/notifications/PhotoUploadNotification;->display(IIZ)V

    return-void
.end method
