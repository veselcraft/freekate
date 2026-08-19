.class public Lcom/my/target/ca;
.super Ljava/lang/Object;
.source "ClickArea.java"


# static fields
.field public static final cZ:Lcom/my/target/ca;

.field public static final da:Lcom/my/target/ca;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7
    new-instance v0, Lcom/my/target/ca;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/my/target/ca;-><init>(I)V

    sput-object v0, Lcom/my/target/ca;->cZ:Lcom/my/target/ca;

    .line 8
    new-instance v0, Lcom/my/target/ca;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/my/target/ca;-><init>(I)V

    sput-object v0, Lcom/my/target/ca;->da:Lcom/my/target/ca;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static h(I)Lcom/my/target/ca;
    .locals 1

    .line 26
    new-instance v0, Lcom/my/target/ca;

    invoke-direct {v0, p0}, Lcom/my/target/ca;-><init>(I)V

    return-object v0
.end method
