.class Lcom/flurry/sdk/db$1;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/db;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/sdk/db;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/db;Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/flurry/sdk/db$1;->b:Lcom/flurry/sdk/db;

    iput-object p2, p0, Lcom/flurry/sdk/db$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/flurry/sdk/db$1;->b:Lcom/flurry/sdk/db;

    new-instance v1, Lcom/flurry/sdk/dd;

    iget-object v2, p0, Lcom/flurry/sdk/db$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/flurry/sdk/dd;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/flurry/sdk/db;->f:Lcom/flurry/sdk/dd;

    return-void
.end method
