.class public Lcom/my/target/dh;
.super Ljava/lang/Object;
.source "Stat.java"


# instance fields
.field private final type:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/my/target/dh;->type:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/my/target/dh;->url:Ljava/lang/String;

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Lcom/my/target/dh;
    .locals 1

    .line 9
    new-instance v0, Lcom/my/target/dh;

    invoke-direct {v0, p0, p1}, Lcom/my/target/dh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/my/target/dh;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/my/target/dh;->url:Ljava/lang/String;

    return-object v0
.end method
