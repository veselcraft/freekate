.class Lcom/perm/kate/session/Session$1;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$activity:Ljava/lang/ref/WeakReference;

.field final synthetic val$googleAPI:Lcom/google/android/gms/common/GoogleApiAvailability;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/google/android/gms/common/GoogleApiAvailability;Ljava/lang/ref/WeakReference;I)V
    .locals 0

    .line 231
    iput-object p2, p0, Lcom/perm/kate/session/Session$1;->val$googleAPI:Lcom/google/android/gms/common/GoogleApiAvailability;

    iput-object p3, p0, Lcom/perm/kate/session/Session$1;->val$activity:Ljava/lang/ref/WeakReference;

    iput p4, p0, Lcom/perm/kate/session/Session$1;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/perm/kate/session/Session$1;->val$googleAPI:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/perm/kate/session/Session$1;->val$activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget v2, p0, Lcom/perm/kate/session/Session$1;->val$result:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;II)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
