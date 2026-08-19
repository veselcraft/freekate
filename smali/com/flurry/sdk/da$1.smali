.class Lcom/flurry/sdk/da$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ei$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/da;->a([BLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ei$a<",
        "[B",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/flurry/sdk/da;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/da;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/flurry/sdk/da$1;->c:Lcom/flurry/sdk/da;

    iput-object p2, p0, Lcom/flurry/sdk/da$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/da$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/ei;Ljava/lang/Object;)V
    .locals 0

    .line 125
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/da$1;->a(Lcom/flurry/sdk/ei;Ljava/lang/Void;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/ei;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ei<",
            "[B",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .line 131
    invoke-virtual {p1}, Lcom/flurry/sdk/ek;->e()I

    move-result p1

    if-lez p1, :cond_1

    .line 133
    invoke-static {}, Lcom/flurry/sdk/da;->b()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlurryDataSender: report "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flurry/sdk/da$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sent. HTTP response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/flurry/sdk/el;->c()I

    move-result p2

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/el;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 137
    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object p2

    new-instance v0, Lcom/flurry/sdk/da$1$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/da$1$1;-><init>(Lcom/flurry/sdk/da$1;I)V

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/dl;->a(Ljava/lang/Runnable;)V

    .line 146
    :cond_0
    iget-object p2, p0, Lcom/flurry/sdk/da$1;->c:Lcom/flurry/sdk/da;

    iget-object v0, p0, Lcom/flurry/sdk/da$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/sdk/da$1;->b:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p1}, Lcom/flurry/sdk/da;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 147
    iget-object p1, p0, Lcom/flurry/sdk/da$1;->c:Lcom/flurry/sdk/da;

    invoke-virtual {p1}, Lcom/flurry/sdk/db;->d()V

    goto :goto_0

    .line 149
    :cond_1
    iget-object p1, p0, Lcom/flurry/sdk/da$1;->c:Lcom/flurry/sdk/da;

    iget-object p2, p0, Lcom/flurry/sdk/da$1;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/flurry/sdk/da$1;->b:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/flurry/sdk/db;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
