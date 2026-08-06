.class public final Lcom/my/target/core/parsers/a;
.super Ljava/lang/Object;
.source "ParseErrorMessages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/parsers/a$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/Exception;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/my/target/core/async/a;

    invoke-direct {v0, p0}, Lcom/my/target/core/async/a;-><init>(Ljava/lang/String;)V

    .line 57
    sget-object v1, Lcom/my/target/core/parsers/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/my/target/core/async/a;->a(Ljava/lang/String;)V

    .line 58
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/my/target/core/async/a;->a(I)V

    .line 59
    invoke-virtual {v0, p1}, Lcom/my/target/core/async/a;->a(Ljava/lang/Throwable;)V

    .line 60
    sget-object v1, Lcom/my/target/core/parsers/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/my/target/core/async/a;->d(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, p2}, Lcom/my/target/core/async/a;->a(Landroid/content/Context;)V

    .line 62
    invoke-virtual {v0}, Lcom/my/target/core/async/a;->a()V

    .line 63
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Unit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/my/target/core/async/a;

    invoke-direct {v1, v0}, Lcom/my/target/core/async/a;-><init>(Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/my/target/core/parsers/a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/my/target/core/async/a;->a(Ljava/lang/String;)V

    .line 44
    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Lcom/my/target/core/async/a;->a(I)V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "JSON parse exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/my/target/core/async/a;->b(Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/my/target/core/parsers/a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/my/target/core/async/a;->d(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, p2}, Lcom/my/target/core/async/a;->a(Landroid/content/Context;)V

    .line 48
    invoke-virtual {v1}, Lcom/my/target/core/async/a;->a()V

    .line 49
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Unit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/my/target/core/async/a;

    invoke-direct {v1, v0}, Lcom/my/target/core/async/a;-><init>(Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/my/target/core/parsers/a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/my/target/core/async/a;->a(Ljava/lang/String;)V

    .line 72
    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Lcom/my/target/core/async/a;->a(I)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "VAST Exception:  "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/my/target/core/async/a;->b(Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/my/target/core/parsers/a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/my/target/core/async/a;->d(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1, p2}, Lcom/my/target/core/async/a;->a(Landroid/content/Context;)V

    .line 76
    invoke-virtual {v1}, Lcom/my/target/core/async/a;->a()V

    .line 77
    return-void
.end method
