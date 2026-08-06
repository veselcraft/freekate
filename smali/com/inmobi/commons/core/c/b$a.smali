.class final Lcom/inmobi/commons/core/c/b$a;
.super Ljava/lang/Object;
.source "TelemetryComponentConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-virtual {p0, p1}, Lcom/inmobi/commons/core/c/b$a;->a(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, p2}, Lcom/inmobi/commons/core/c/b$a;->a(I)V

    .line 135
    invoke-virtual {p0, p3}, Lcom/inmobi/commons/core/c/b$a;->a(Z)V

    .line 136
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/inmobi/commons/core/c/b$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 151
    iput p1, p0, Lcom/inmobi/commons/core/c/b$a;->b:I

    .line 152
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/inmobi/commons/core/c/b$a;->a:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/inmobi/commons/core/c/b$a;->c:Z

    .line 156
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/inmobi/commons/core/c/b$a;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/inmobi/commons/core/c/b$a;->c:Z

    return v0
.end method
