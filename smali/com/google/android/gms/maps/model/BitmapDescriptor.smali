.class public final Lcom/google/android/gms/maps/model/BitmapDescriptor;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-maps@@17.0.1"


# instance fields
.field private final zza:Lcom/google/android/gms/dynamic/IObjectWrapper;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/dynamic/IObjectWrapper;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/dynamic/IObjectWrapper;

    iput-object p1, p0, Lcom/google/android/gms/maps/model/BitmapDescriptor;->zza:Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/model/BitmapDescriptor;->zza:Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-object v0
.end method
