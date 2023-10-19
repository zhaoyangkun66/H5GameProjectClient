.class public L㚬/ㄏ/உ/உ$உ;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ㄏ/உ/உ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u0b89"
.end annotation


# instance fields
.field public final synthetic உ:L㚬/ㄏ/உ/உ;


# direct methods
.method public constructor <init>(L㚬/ㄏ/உ/உ;)V
    .locals 0

    iput-object p1, p0, L㚬/ㄏ/உ/உ$உ;->உ:L㚬/ㄏ/உ/உ;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, L㚬/ㄏ/உ/உ$உ;->உ:L㚬/ㄏ/உ/உ;

    invoke-virtual {p1}, L㚬/ㄏ/உ/உ;->ㄏ()V

    return-void
.end method
