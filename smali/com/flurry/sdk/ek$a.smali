.class public final enum Lcom/flurry/sdk/ek$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flurry/sdk/ek$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/ek$a;

.field public static final enum b:Lcom/flurry/sdk/ek$a;

.field public static final enum c:Lcom/flurry/sdk/ek$a;

.field public static final enum d:Lcom/flurry/sdk/ek$a;

.field public static final enum e:Lcom/flurry/sdk/ek$a;

.field public static final enum f:Lcom/flurry/sdk/ek$a;

.field private static final synthetic g:[Lcom/flurry/sdk/ek$a;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 117
    new-instance v0, Lcom/flurry/sdk/ek$a;

    const-string v1, "kUnknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/ek$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/ek$a;->a:Lcom/flurry/sdk/ek$a;

    .line 118
    new-instance v1, Lcom/flurry/sdk/ek$a;

    const-string v3, "kGet"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/flurry/sdk/ek$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/flurry/sdk/ek$a;->b:Lcom/flurry/sdk/ek$a;

    .line 119
    new-instance v3, Lcom/flurry/sdk/ek$a;

    const-string v5, "kPost"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/flurry/sdk/ek$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;

    .line 120
    new-instance v5, Lcom/flurry/sdk/ek$a;

    const-string v7, "kPut"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/flurry/sdk/ek$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/flurry/sdk/ek$a;->d:Lcom/flurry/sdk/ek$a;

    .line 121
    new-instance v7, Lcom/flurry/sdk/ek$a;

    const-string v9, "kDelete"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/flurry/sdk/ek$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/flurry/sdk/ek$a;->e:Lcom/flurry/sdk/ek$a;

    .line 122
    new-instance v9, Lcom/flurry/sdk/ek$a;

    const-string v11, "kHead"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/flurry/sdk/ek$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/flurry/sdk/ek$a;->f:Lcom/flurry/sdk/ek$a;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/flurry/sdk/ek$a;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 116
    sput-object v11, Lcom/flurry/sdk/ek$a;->g:[Lcom/flurry/sdk/ek$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/ek$a;
    .locals 1

    .line 116
    const-class v0, Lcom/flurry/sdk/ek$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/sdk/ek$a;

    return-object p0
.end method

.method public static values()[Lcom/flurry/sdk/ek$a;
    .locals 1

    .line 116
    sget-object v0, Lcom/flurry/sdk/ek$a;->g:[Lcom/flurry/sdk/ek$a;

    invoke-virtual {v0}, [Lcom/flurry/sdk/ek$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/ek$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 2

    .line 147
    sget-object v0, Lcom/flurry/sdk/ek$3;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 161
    :cond_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 158
    :cond_1
    new-instance v0, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 155
    :cond_2
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 152
    :cond_3
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 149
    :cond_4
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 125
    sget-object v0, Lcom/flurry/sdk/ek$3;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "GET"

    return-object v0

    :cond_1
    const-string v0, "HEAD"

    return-object v0

    :cond_2
    const-string v0, "DELETE"

    return-object v0

    :cond_3
    const-string v0, "PUT"

    return-object v0

    :cond_4
    const-string v0, "POST"

    return-object v0
.end method
