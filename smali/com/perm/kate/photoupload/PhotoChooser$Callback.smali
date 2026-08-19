.class public interface abstract Lcom/perm/kate/photoupload/PhotoChooser$Callback;
.super Ljava/lang/Object;
.source "PhotoChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/photoupload/PhotoChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract canceled()V
.end method

.method public abstract selected(Ljava/util/ArrayList;)V
.end method

.method public abstract selectedFromAlbum(Ljava/util/ArrayList;)V
.end method
