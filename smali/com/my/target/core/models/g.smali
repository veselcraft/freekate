.class public final Lcom/my/target/core/models/g;
.super Lcom/my/target/core/models/b;
.source "IconStatus.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/my/target/core/models/b;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/my/target/core/models/g;->a:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/my/target/core/models/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/my/target/core/models/g;->b:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/my/target/core/models/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/my/target/core/models/g;->c:Ljava/lang/String;

    .line 51
    return-void
.end method
