.class public Lcom/perm/kate/tabs/TabInfo;
.super Ljava/lang/Object;
.source "TabInfo.java"


# instance fields
.field public fragment:Lcom/perm/kate/BaseFragment;

.field public id:Ljava/lang/String;

.field public title:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/perm/kate/tabs/TabInfo;->title:I

    .line 15
    return-void
.end method
