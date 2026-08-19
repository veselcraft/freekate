.class public final Lcom/google/android/gms/maps/model/RuntimeRemoteException;
.super Ljava/lang/RuntimeException;
.source "com.google.android.gms:play-services-maps@@17.0.1"


# direct methods
.method public constructor <init>(Landroid/os/RemoteException;)V
    .locals 0
    .param p1    # Landroid/os/RemoteException;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
