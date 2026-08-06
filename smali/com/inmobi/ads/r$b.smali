.class abstract enum Lcom/inmobi/ads/r$b;
.super Ljava/lang/Enum;
.source "NativeStrandAdCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/r$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/inmobi/ads/r$b;

.field public static final enum b:Lcom/inmobi/ads/r$b;

.field public static final enum c:Lcom/inmobi/ads/r$b;

.field public static final enum d:Lcom/inmobi/ads/r$b;

.field private static final synthetic f:[Lcom/inmobi/ads/r$b;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/inmobi/ads/r$b$1;

    const-string v1, "STARTED"

    const-string v2, "Started"

    invoke-direct {v0, v1, v3, v2}, Lcom/inmobi/ads/r$b$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/r$b;->a:Lcom/inmobi/ads/r$b;

    .line 135
    new-instance v0, Lcom/inmobi/ads/r$b$2;

    const-string v1, "PAUSED"

    const-string v2, "Paused"

    invoke-direct {v0, v1, v4, v2}, Lcom/inmobi/ads/r$b$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/r$b;->b:Lcom/inmobi/ads/r$b;

    .line 169
    new-instance v0, Lcom/inmobi/ads/r$b$3;

    const-string v1, "STOPPED"

    const-string v2, "Stopped"

    invoke-direct {v0, v1, v5, v2}, Lcom/inmobi/ads/r$b$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/r$b;->c:Lcom/inmobi/ads/r$b;

    .line 193
    new-instance v0, Lcom/inmobi/ads/r$b$4;

    const-string v1, "DESTROYED"

    const-string v2, "Destroyed"

    invoke-direct {v0, v1, v6, v2}, Lcom/inmobi/ads/r$b$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/r$b;->d:Lcom/inmobi/ads/r$b;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/inmobi/ads/r$b;

    sget-object v1, Lcom/inmobi/ads/r$b;->a:Lcom/inmobi/ads/r$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/ads/r$b;->b:Lcom/inmobi/ads/r$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/ads/r$b;->c:Lcom/inmobi/ads/r$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/ads/r$b;->d:Lcom/inmobi/ads/r$b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/inmobi/ads/r$b;->f:[Lcom/inmobi/ads/r$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 211
    iput-object p3, p0, Lcom/inmobi/ads/r$b;->e:Ljava/lang/String;

    .line 212
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/inmobi/ads/r$1;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/ads/r$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/r$b;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/inmobi/ads/r$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/r$b;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/r$b;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/inmobi/ads/r$b;->f:[Lcom/inmobi/ads/r$b;

    invoke-virtual {v0}, [Lcom/inmobi/ads/r$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/r$b;

    return-object v0
.end method


# virtual methods
.method abstract a(Lcom/inmobi/ads/r;)V
.end method

.method a(Lcom/inmobi/ads/r;JZ)V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method a(Lcom/inmobi/ads/r;Z)V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method b(Lcom/inmobi/ads/r;)V
    .locals 4

    .prologue
    .line 217
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/r;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot be started from current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/inmobi/ads/r;->h(Lcom/inmobi/ads/r;)Lcom/inmobi/ads/r$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/r$b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method b(Lcom/inmobi/ads/r;Z)V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method c(Lcom/inmobi/ads/r;)V
    .locals 4

    .prologue
    .line 221
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/r;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot be stopped from current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/inmobi/ads/r;->h(Lcom/inmobi/ads/r;)Lcom/inmobi/ads/r$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/r$b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method d(Lcom/inmobi/ads/r;)V
    .locals 4

    .prologue
    .line 225
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/r;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot be destroyed from current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/inmobi/ads/r;->h(Lcom/inmobi/ads/r;)Lcom/inmobi/ads/r$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/r$b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method e(Lcom/inmobi/ads/r;)V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method f(Lcom/inmobi/ads/r;)Lcom/inmobi/ads/q;
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return-object v0
.end method

.method g(Lcom/inmobi/ads/r;)V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method h(Lcom/inmobi/ads/r;)V
    .locals 4

    .prologue
    .line 240
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/r;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdLoad failed not handled for state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/inmobi/ads/r;->h(Lcom/inmobi/ads/r;)Lcom/inmobi/ads/r$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/r$b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/inmobi/ads/r$b;->e:Ljava/lang/String;

    return-object v0
.end method
