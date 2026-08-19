.class public Lcom/my/target/by;
.super Ljava/lang/Object;
.source "AdChoices.java"


# direct methods
.method private constructor <init>(Lcom/my/target/common/models/ImageData;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/my/target/common/models/ImageData;Ljava/lang/String;)Lcom/my/target/by;
    .locals 1

    .line 11
    new-instance v0, Lcom/my/target/by;

    invoke-direct {v0, p0, p1}, Lcom/my/target/by;-><init>(Lcom/my/target/common/models/ImageData;Ljava/lang/String;)V

    return-object v0
.end method
