.class public Lcom/perm/kate/api/BotKeyboard;
.super Ljava/lang/Object;
.source "BotKeyboard.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public author_id:Ljava/lang/Long;

.field public buttons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/perm/kate/api/BotButton;",
            ">;>;"
        }
    .end annotation
.end field

.field public inline:Z

.field public one_time:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/api/BotKeyboard;->buttons:Ljava/util/ArrayList;

    return-void
.end method
