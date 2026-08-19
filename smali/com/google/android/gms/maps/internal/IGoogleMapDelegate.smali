.class public interface abstract Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-maps@@17.0.1"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/internal/maps/zzx;
.end method

.method public abstract clear()V
.end method

.method public abstract moveCamera(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .param p1    # Lcom/google/android/gms/dynamic/IObjectWrapper;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
.end method

.method public abstract setOnMapClickListener(Lcom/google/android/gms/maps/internal/zzal;)V
    .param p1    # Lcom/google/android/gms/maps/internal/zzal;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method
