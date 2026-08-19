.class public Lcom/my/target/ij;
.super Ljava/lang/Object;
.source "ClickHandler.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eD()Lcom/my/target/ij;
    .locals 1

    .line 46
    new-instance v0, Lcom/my/target/ij;

    invoke-direct {v0}, Lcom/my/target/ij;-><init>()V

    return-object v0
.end method
