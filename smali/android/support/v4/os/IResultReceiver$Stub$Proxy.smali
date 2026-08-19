.class Landroid/support/v4/os/IResultReceiver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IResultReceiver.java"

# interfaces
.implements Landroid/support/v4/os/IResultReceiver;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroid/support/v4/os/IResultReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 73
    iget-object v0, p0, Landroid/support/v4/os/IResultReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method
