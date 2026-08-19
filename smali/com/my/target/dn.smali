.class public abstract Lcom/my/target/dn;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# instance fields
.field protected c:Ljava/lang/String;

.field protected el:Z

.field protected em:Ljava/lang/Object;

.field protected responseCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/my/target/dn;->responseCode:I

    return-void
.end method


# virtual methods
.method public aL()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/my/target/dn;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
.end method

.method public cH()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/my/target/dn;->el:Z

    return v0
.end method

.method public cI()Ljava/lang/Object;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/my/target/dn;->em:Ljava/lang/Object;

    return-object v0
.end method

.method public final f(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/my/target/dn;->el:Z

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/my/target/dn;->responseCode:I

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/my/target/dn;->em:Ljava/lang/Object;

    .line 48
    iput-object v0, p0, Lcom/my/target/dn;->c:Ljava/lang/String;

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/my/target/dn;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
