.class public Lcom/perm/kate/api/SearchDialogItem;
.super Ljava/lang/Object;
.source "SearchDialogItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/api/SearchDialogItem$SDIType;
    }
.end annotation


# instance fields
.field public chat:Lcom/perm/kate/api/Message;

.field public email:Ljava/lang/String;

.field public group:Lcom/perm/kate/api/Group;

.field public str_type:Ljava/lang/String;

.field public type:Lcom/perm/kate/api/SearchDialogItem$SDIType;

.field public user:Lcom/perm/kate/api/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
