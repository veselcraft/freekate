.class public abstract Lcom/flurry/sdk/el;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I = 0xfa0

.field private static b:Z = false

.field private static c:I = 0x5

.field private static d:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 119
    invoke-static {p0, p1, p2}, Lcom/flurry/sdk/el;->c(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 115
    invoke-static {p0, p1, p2, p3}, Lcom/flurry/sdk/el;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 79
    invoke-static {v0, p0, p1}, Lcom/flurry/sdk/el;->b(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x6

    .line 83
    invoke-static {v0, p0, p1, p2}, Lcom/flurry/sdk/el;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 127
    sget-boolean v0, Lcom/flurry/sdk/el;->b:Z

    if-nez v0, :cond_0

    sget v0, Lcom/flurry/sdk/el;->c:I

    if-gt v0, p0, :cond_0

    .line 128
    invoke-static {p0, p1, p2}, Lcom/flurry/sdk/el;->d(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/flurry/sdk/el;->b(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 87
    invoke-static {v0, p0, p1}, Lcom/flurry/sdk/el;->b(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x5

    .line 107
    invoke-static {v0, p0, p1, p2}, Lcom/flurry/sdk/el;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c()I
    .locals 1

    .line 48
    sget v0, Lcom/flurry/sdk/el;->c:I

    return v0
.end method

.method private static c(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 137
    sget-boolean v0, Lcom/flurry/sdk/el;->d:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-static {p0, p1, p2}, Lcom/flurry/sdk/el;->d(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/flurry/sdk/el;->c(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static d(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 143
    sget-boolean v0, Lcom/flurry/sdk/el;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "FlurryAgent"

    .line 150
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 152
    sget v2, Lcom/flurry/sdk/el;->a:I

    sub-int v3, v0, v1

    if-le v2, v3, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    add-int/2addr v2, v1

    .line 153
    :goto_2
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-static {p0, p1, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    :goto_3
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    .line 111
    invoke-static {v0, p0, p1}, Lcom/flurry/sdk/el;->b(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d()Z
    .locals 1

    .line 52
    sget-boolean v0, Lcom/flurry/sdk/el;->d:Z

    return v0
.end method
