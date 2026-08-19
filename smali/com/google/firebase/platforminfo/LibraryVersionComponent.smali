.class public abstract Lcom/google/firebase/platforminfo/LibraryVersionComponent;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-common@@17.1.0"


# direct methods
.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/Component;
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lcom/google/firebase/platforminfo/LibraryVersion;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/platforminfo/LibraryVersion;

    move-result-object p0

    const-class p1, Lcom/google/firebase/platforminfo/LibraryVersion;

    invoke-static {p0, p1}, Lcom/google/firebase/components/Component;->intoSet(Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/firebase/components/Component;

    move-result-object p0

    return-object p0
.end method
