.class Lcom/inmobi/signals/i$a$1;
.super Ljava/lang/Object;
.source "IceCollector.java"

# interfaces
.implements Lcom/inmobi/signals/b/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/signals/i$a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/signals/m;

.field final synthetic b:Lcom/inmobi/signals/i$a;


# direct methods
.method constructor <init>(Lcom/inmobi/signals/i$a;Lcom/inmobi/signals/m;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/inmobi/signals/i$a$1;->b:Lcom/inmobi/signals/i$a;

    iput-object p2, p0, Lcom/inmobi/signals/i$a$1;->a:Lcom/inmobi/signals/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 140
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/signals/i;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wifi scan timeout."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/inmobi/signals/i$a$1;->b:Lcom/inmobi/signals/i$a;

    iget-object v1, p0, Lcom/inmobi/signals/i$a$1;->a:Lcom/inmobi/signals/m;

    invoke-static {v0, v1}, Lcom/inmobi/signals/i$a;->a(Lcom/inmobi/signals/i$a;Lcom/inmobi/signals/m;)V

    .line 142
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/signals/b/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/signals/i;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wifi scan successful."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/inmobi/signals/i$a$1;->a:Lcom/inmobi/signals/m;

    invoke-virtual {v0, p1}, Lcom/inmobi/signals/m;->a(Ljava/util/List;)V

    .line 148
    iget-object v0, p0, Lcom/inmobi/signals/i$a$1;->b:Lcom/inmobi/signals/i$a;

    iget-object v1, p0, Lcom/inmobi/signals/i$a$1;->a:Lcom/inmobi/signals/m;

    invoke-static {v0, v1}, Lcom/inmobi/signals/i$a;->a(Lcom/inmobi/signals/i$a;Lcom/inmobi/signals/m;)V

    .line 149
    return-void
.end method
